use bevy::prelude::*;
use bevy_mod_picking::*;

struct Point {
    position: Vec3,
    original_color: Color,
}

fn main() {
    App::new()
        .add_systems(Update, hello_world)
        .run();
}

fn hello_world() {
    println!("hello world!");
}
#[derive(Component)]
struct Person;

#[derive(Component)]
struct Name(String);

fn add_people(mut commands: Commands) {
    commands.spawn((Person, Name("Elaina Proctor".to_string())));
    commands.spawn((Person, Name("Renzo Hume".to_string())));
    commands.spawn((Person, Name("Zayna Nieves".to_string())));
}

fn greet_people(query: Query<&Name, With<Person>>) {
    for name in &query {
        println!("hello {}!", name.0);
    }
}

fn main() {
    App::new()
        .add_systems(Startup, add_people)
        .add_systems(Update, (hello_world, greet_people))
        .run();
}

#[test]
fn test() {
    main();
}

