module TRRSHolder () {
    difference(){
        hull(){
            translate([-10, 1, 4])
                cube([25.5, 10, 2]);
            translate([-10, 1, 0])
                cube([10, 10, 6]);
        }
        translate([0, 2.9, 0])
            cube([12.5, 6.2, 5.2]);
    }

}
module TRRSHolderBottom () {
    difference(){
        translate([10, 3, -18])
            cube([6, 6, 21]);
        translate([0, 2.9, 0])
            cube([12.5, 6.2, 5.2]);
    }
}

module TRRSHolderCentered () {

    difference(){
        hull(){
            translate([-10, -5, 0])
                cube([10, 10, 6]);
            translate([-10, -5, 3])
                cube([25.5, 10, 3]);
        }
        translate([0, -3.1, -0.9])
            cube([12.5, 6.2, 6.2]);
    }

}





//43.8   18.5 -> 18.2
module holderBorder(length, width) { union () {
    translate([0, -(width + 0.3)/2 -1.9, 0]) {
        translate([-10, 0, 0]) {
            cube([17, 1.9, 3]);
            translate([length + 7, 0, 0])
                cube([4, 1.9, 3]);
            translate([0, width + 5.1, 0]) mirror([0, 1, 0]) {
                cube([length + 21.3, 2.9, 3]);
            }
            hull(){
                translate([length + 12.3, width + 2.2, 0.5])
                    cube([9, 1, 2]);
                translate([length + 10.3, 0, 0.5])
                    cube([3, width + 5.1, 2]);
            }
        }
        translate([length + 0.3, 0, 0])
            cube([3, width + 5.1, 3]);
    }
}}


module arduinoNanoUSBCHolder () { union(){
    holderBorder(43.3, 17.9);

    translate([-10, 5.75, 2])
        cube([11.5, 6.25, 2]);
    translate([-10, -11, 2])
        cube([11.5, 5.25, 2]);
    translate([41.8, -11, 2])
        cube([4, 5.75, 2]);
    translate([41.8, 5.25, 2])
        cube([4, 6.75, 2]);

}}

module arduinoNanoUSBCHolderBottom () { union(){
    translate([-10, 5.75, -30])
        cube([11.5, 6.25, 30]);
    translate([-10, -11, -30])
        cube([11.5, 5.25, 30]);
    translate([41.8, -11, -30])
        cube([4, 5.75, 30]);
    translate([41.8, 5.25, -30])
        cube([4, 6.75, 30]);
}}









module arduinoProMicroUSBCHolder () { union(){
    holderBorder(35, 18.1);

    translate([-10, -11.1, 2])
        cube([14, 4, 2]);
    translate([-10, 7.1, 2])
        cube([14, 5, 2]);
    translate([32.5, -4.5, 2])
        cube([4.5, 9, 2]);
}}
module arduinoProMicroUSBCHolderBottom () { union(){
    translate([-10, -11.1, -30])
        cube([14, 4, 30]);
    translate([-10, 7.1, -30])
        cube([14, 5, 30]);
    translate([32.5, -4.5, -30])
        cube([4.5, 9, 30]);
}}

module arduinoProMicroMicroUSBHolder () { union(){
    holderBorder(33.4, 19.6);

    translate([-10, -11.85, 2])
        cube([14, 4, 2]);
    translate([-10, 7.85, 2])
        cube([14, 5, 2]);
    translate([31, -4.5, 2])
        cube([4.5, 9, 2]);
}}
module arduinoProMicroMicroUSBHolderBottom () { union(){
    translate([-10, -11.85, -30])
        cube([14, 4, 30]);
    translate([-10, 7.85, -30])
        cube([14, 5, 30]);
    translate([31, -4.5, -30])
        cube([4.5, 9, 30]);
}}
