use kiss3d::{light::Light, camera};
use kiss3d::window::Window;
use kiss3d::scene::SceneNode;
use nalgebra::{UnitQuaternion, Vector3, Translation3};
use crate::parse::{Node, Parsed};
#[test]
fn test() {
    let gcode = Parsed::build("test.gcode").expect("failed to parse");
    let mut temp: Vec<(f32, f32, f32)> = Vec::new();
    for node in gcode.nodes {
        if let Node::Vertex(v) = node {
            if v.id > -10 {
                temp.push((v.to.x, v.to.y, v.to.z));
            }
        }
    }

    let mut window = Window::new("Kiss3d: cube");
    let mut v: Vec<SceneNode> = Vec::new();

    for (x, y, z) in temp {
        let mut temp = window.add_sphere(0.2);
        temp.set_local_translation(Translation3::new(x, y, z));
        v.push(temp);
    }

    for mut s in v {
        s.set_color(0.0, 1.0, 0.0);
    }



    window.set_light(Light::StickToCamera);


    while window.render() {
    }
}