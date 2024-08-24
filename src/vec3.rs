use std::ops;

pub struct Vec3 {
    pub x: f64,
    pub y: f64,
    pub z: f64
}

impl Vec3 {
    pub fn new(x: f64, y: f64, z: f64) -> Vec3 {
        Vec3 { x: x, y: y, z: z }
    }

    pub fn dist_sq(&self, other: Vec3) -> f64 {
        let dx = self.x - other.x;
        let dy = self.y - other.y;
        let dz = self.z - other.z;
        return dx * dx + dy * dy + dz * dz;
    }
}

impl Clone for Vec3 {
    fn clone(&self) -> Vec3 {
        Vec3 { x: self.x, y: self.y, z: self.z }
    }
}

impl Copy for Vec3 {}

impl ops::Add<Vec3> for Vec3 {
    type Output = Vec3;

    fn add(self, other: Vec3) -> Self::Output {
        let mut result = self.clone();
        result.x += other.x;
        result.y += other.y;
        result.z += other.z;
        return result
    }
}

impl ops::AddAssign<Vec3> for Vec3 {
    fn add_assign(&mut self, other: Vec3) {
        self.x += other.x;
        self.y += other.y;
        self.z += other.z;
    }
}

impl ops::Sub<Vec3> for Vec3 {
    type Output = Vec3;

    fn sub(self, other: Vec3) -> Self::Output {
        let mut result = self.clone();
        result.x -= other.x;
        result.y -= other.y;
        result.z -= other.z;
        return result
    }
}

impl ops::Mul<f64> for Vec3 {
    type Output = Vec3;

    fn mul(self, other: f64) -> Self::Output {
        let mut result = self.clone();
        result.x *= other;
        result.y *= other;
        result.z *= other;
        return result;
    }
}

impl ops::Div<f64> for Vec3 {
    type Output = Vec3;

    fn div(self, other: f64) -> Self::Output {
        let mut result = self.clone();
        result.x /= other;
        result.y /= other;
        result.z /= other;
        return result;
    }
}