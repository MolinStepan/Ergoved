include <values.scad>

use <case.scad>

module addToBottom(pos, ang){ union(){
    children(1);
    intersection(){
        translate(pos) rotate(ang + 270, [0, 0, 1])
            children(0);
        linear_extrude(50, [0, 0, 1])
            projection()
                plateClosedSmall();
    }
}}
module addToBottomUnderRing(height = 2){
    addToBottom(f3pos + 30 * f3col + [0, 0, 2 + height - f3pos.z], f3ang) {
    children(0);
    children(1);
    }
}
module addToBottomUnderPinky(height = 2){
    addToBottom(f4pos + 30 * f4col + [0, 0, 2 + height - f4pos.z], f4ang) {
    children(0);
    children(1);
    }
}
