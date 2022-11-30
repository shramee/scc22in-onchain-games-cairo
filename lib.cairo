mod structs;
mod physics;

use structs::PhysicalObject;
use physics::newObject;
use physics::applyForce;
use physics::updateObject;

func main() -> PhysicalObject {
    let player = newObject( 300, 200, 1, 808 );

    // Allow standard way of modifying the object
    let player = applyForce( ( 5, 0 ), player );
    
    let player = applyForce( ( 0, 10 ), player );

    let player = updateObject( player );

    player
}