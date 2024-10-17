use sdl2::keyboard::Keycode;
use sdl2::pixels::Color;
use sdl2::event::Event;
use sdl2::rect::Rect;

use core::f64;
use std::collections::HashMap;
use std::time;

mod vec3;
use vec3::Vec3;

use rand::Rng;

struct Particle {
    pos: Vec3,
    vel: Vec3,
    acceleration: Vec3,
    mass: f64,
    charge: f64
}

impl Particle {
    fn new(pos: Vec3, mass: f64, charge: f64) -> Particle {
        Particle {
            pos: pos,
            vel: Vec3::new(0.0, 0.0, 0.0),
            acceleration: Vec3::new(0.0, 0.0, 0.0),
            mass: mass,
            charge: charge
        }
    }
}

const PARTICLE_COUNT: usize = 2000;

const WINDOW_WIDTH: u32 = 800;
const WINDOW_HEIGHT: u32 = 800;

const TIME_FACTOR: f64 = 0.00025;
const SIMULATION_TIMESTEP: f64 = 0.00000000000000000000000001;

const C: f64 = 299_792_458.0;

const G: f64 = 6.6743e-11;

const E0: f64 = 8.85418781762039e-12;
const K_E: f64 = 1.0 / (4.0 * f64::consts::PI * E0);

const GRAVITY_THRESHOLD_TIMES_R_OVER_MASS: f64 = G / C / C;

const PROTON_MASS: f64 = 1.67262192e-27;
const PROTON_CHARGE: f64 = 1.60217663e-19;

const ELECTRON_MASS: f64 = 9.1093837e-31;
const ELECTRON_CHARGE: f64 = -PROTON_CHARGE;

const MU: f64 = 1.0 / (1.4e-15);

fn main() {
    let mut keyboard_map: HashMap<Keycode, bool> = HashMap::new();

    let mut particles: Vec<Particle> = Vec::new();
    let mut camera_position = Vec3::new(0.0, 0.0, 0.0);
    let mut camera_scale = (WINDOW_HEIGHT as f64) * 0.1;

    for _ in 0..PARTICLE_COUNT {
        let x = rand::thread_rng().gen_range(0.0..10.0);
        let z = rand::thread_rng().gen_range(0.0..10.0);
        //println!("x = {x}, z = {z}");
        if rand::thread_rng().gen_bool(0.5) {
            if rand::thread_rng().gen_bool(0.5) {
                let particle = Particle::new(Vec3::new(x, 0.0, z), PROTON_MASS, PROTON_CHARGE);
                particles.push(particle);
            } else {
                let particle = Particle::new(Vec3::new(x, 0.0, z), PROTON_MASS, 0.0);
                particles.push(particle);
            }
        } else {
            let particle = Particle::new(Vec3::new(x, 0.0, z), ELECTRON_MASS, ELECTRON_CHARGE);
            particles.push(particle);
        }
        //let particle = Particle::new(Vec3::new(x, 0.0, z), PROTON_MASS, 0.0);
        //particles.push(particle);
    }

    let sdl_context = sdl2::init().unwrap();
    let video_subsystem = sdl_context.video().unwrap();

    let window = video_subsystem.window("universe miner", WINDOW_WIDTH, WINDOW_HEIGHT)
        .position_centered()
        .build()
        .unwrap();

    let mut canvas = window.into_canvas().accelerated().build().unwrap();
    canvas.clear();
    canvas.present();

    //canvas.set_blend_mode(sdl2::render::BlendMode::Blend);

    let mut event_pump = sdl_context.event_pump().unwrap();

    let mut timer = time::SystemTime::now();

    let mut is_real_time = false;

    println!("ready!");
    'running: loop {
        if is_real_time {
            'real_time: loop {
                for event in event_pump.poll_iter() {
                    match event {
                        Event::Quit {..} => {
                            break 'running
                        },
                        Event::KeyDown { timestamp: _, window_id: _, keycode, scancode: _, keymod: _, repeat: _ } => {

                            if keycode != None {
                                if keycode.unwrap() == Keycode::S {
                                    is_real_time = !is_real_time;
                                    break 'real_time;
                                }
                                keyboard_map.insert(keycode.unwrap(), true);
                            }
                        },
                        Event::KeyUp { timestamp: _, window_id: _, keycode, scancode: _, keymod: _, repeat: _ } => {
                            if keycode != None {
                                keyboard_map.insert(keycode.unwrap(), false);
                            }
                        }
                        _ => {}
                    }
                }

                // main
                let dt: f64 = match timer.elapsed() {
                    Ok(duration) => duration.as_nanos() as f64 / 1_000_000_000.0 * TIME_FACTOR,
                    Err(err) => {
                        println!("{}", err.to_string());
                        1.0
                    }
                };
                timer = time::SystemTime::now();
    
                for i in 0..PARTICLE_COUNT {
                    let particle = &particles[i];
    
                    let mut forces = Vec3::new(0.0, 0.0, 0.0);
    
                    for j in 0..PARTICLE_COUNT {
                        if i == j {continue};
                        let particle2 = &particles[j];
    
                        let dist_sq = particle.pos.dist_sq(particle2.pos);
                        let dist = dist_sq.sqrt();

                        let force_vec = (particle2.pos - particle.pos) / dist;
    
                        let gravitational_force_scale = G * particle.mass * particle2.mass / dist_sq;
                        let coulomb_force_scale = -K_E * particle.charge * particle2.charge / dist_sq;
                        let strong_nuclear_force_scale = /* some g const = 1 */ 1.0 * (MU + 1.0 / dist) / dist_sq * f64::consts::E.powf(-MU * dist);
    
                        let mut forces_scales: f64 = coulomb_force_scale + strong_nuclear_force_scale;
    
                        //if GRAVITY_THRESHOLD_TIMES_R_OVER_MASS / dist * particle2.mass < 1.0 {
                            forces_scales += gravitational_force_scale;
                        //}
    
                        forces += force_vec * forces_scales;
                    }
    
                    let particle = &mut particles[i];
    
                    particle.acceleration = forces / particle.mass;
                }
    
                for i in 0..PARTICLE_COUNT {
                    let particle = &mut particles[i];
                    particle.vel += particle.acceleration * dt;
                    particle.pos += particle.vel * dt;
    
                    let draw_pos = (particle.pos - camera_position) * camera_scale;
                    let draw_x: i32 = (draw_pos.x) as i32;
                    let draw_y: i32 = (draw_pos.z) as i32;
                    if particle.charge > 0.0 {
                        canvas.set_draw_color(Color::RGBA(255, 0, 0, 255));
                    } else if particle.charge < 0.0 {
                        canvas.set_draw_color(Color::RGBA(0, 0, 255, 255));
                    } else {
                        canvas.set_draw_color(Color::RGBA(255, 255, 255, 255));
                    }

                    canvas.fill_rect(Rect::new(draw_x, draw_y, 10, 10)).unwrap();
                }
    
                canvas.present();
                canvas.set_draw_color(Color::BLACK);
                canvas.clear();
            }
        } else {
            'simulate: loop {
                for event in event_pump.poll_iter() {
                    match event {
                        Event::Quit {..} => {
                            break 'running
                        },
                        Event::KeyDown { timestamp: _, window_id: _, keycode, scancode: _, keymod: _, repeat: _ } => {
                            if keycode != None {
                                if keycode.unwrap() == Keycode::S {
                                    is_real_time = !is_real_time;
                                    break 'simulate;
                                }
                                keyboard_map.insert(keycode.unwrap(), true);
                            }
                        },
                        Event::KeyUp { timestamp: _, window_id: _, keycode, scancode: _, keymod: _, repeat: _ } => {
                            if keycode != None {
                                keyboard_map.insert(keycode.unwrap(), false);
                            }
                        }
                        _ => {}
                    }
                }
    
                for i in 0..PARTICLE_COUNT {
                    let particle = &particles[i];
    
                    let mut forces = Vec3::new(0.0, 0.0, 0.0);
    
                    for j in 0..PARTICLE_COUNT {
                        if i == j {continue};
                        let particle2 = &particles[j];
    
                        let dist_sq = particle.pos.dist_sq(particle2.pos);
                        let dist = dist_sq.sqrt();

                        let force_vec = (particle2.pos - particle.pos) / dist;
    
                        let gravitational_force_scale = G * particle.mass * particle2.mass / dist_sq;
                        let coulomb_force_scale = -K_E * particle.charge * particle2.charge / dist_sq;
                        let strong_nuclear_force_scale = /* some g const = 1 */ 1.0 * (MU + 1.0 / dist) / dist_sq * f64::consts::E.powf(-MU * dist);
    
                        let mut forces_scales: f64 = coulomb_force_scale + strong_nuclear_force_scale;
    
                        //if GRAVITY_THRESHOLD_TIMES_R_OVER_MASS / dist * particle2.mass < 1.0 {
                        //    forces_scales += gravitational_force_scale;
                        //}
    
                        forces += force_vec * forces_scales;
                    }
    
                    let particle = &mut particles[i];
    
                    particle.acceleration = forces / particle.mass;
                }
    
                for i in 0..PARTICLE_COUNT {
                    let particle = &mut particles[i];
                    particle.vel += particle.acceleration * SIMULATION_TIMESTEP;
                    particle.pos += particle.vel * SIMULATION_TIMESTEP;
                }
            }
        }
    }
}