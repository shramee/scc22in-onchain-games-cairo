use game::structs::PhysicalObject;

func newObject( posX: felt, posY: felt, kind: felt, id: felt ) -> PhysicalObject {
    PhysicalObject{
        position: ( posX, posY ),
        velocity: ( 0, 0 ),
        kind: kind,
        id: id,
    }
}

func applyForce( force: (felt, felt), obj: PhysicalObject ) -> PhysicalObject {
    let (x, y) = obj.position;
    let (vx, vy) = obj.velocity;
    let (ax, ay) = force;
    PhysicalObject{
        position: (x, y),
        velocity: ( vx + ax, vy + ay ),
        kind: obj.kind,
        id: obj.id,
    }
}

func updateObject( obj: PhysicalObject ) -> PhysicalObject {
    let (x, y) = obj.position;
    let (vx, vy) = obj.velocity;
    
    PhysicalObject{
        position: (x + vx, y + vy),
        velocity: ( vx, vy ),
        kind: obj.kind,
        id: obj.id,
    }
}