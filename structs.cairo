#[derive(Copy, Drop)]
struct PhysicalObject {
    position: ( felt, felt ),
    velocity: ( felt, felt ),
    kind: felt,
    id: felt,
}