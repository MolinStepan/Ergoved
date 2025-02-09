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

module TRRSHole(){ union () {
    translate([-1.5, 6, 2.6])rotate(90, [0, -1, 0])
        cylinder(20, 4.5, 4.5);
    translate([0.1, 6, 2.6])rotate(90, [0, -1, 0])
        cylinder(20, 2.5, 2.5);
}}
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









module arduinoNanoUSBCHolder () { union(){
    translate([0, -11, 0]) {
        translate([-10, 0, 0]) {
            cube([17, 1.75, 3]);
            translate([50, 0, 0])
                cube([4, 1.75, 3]);
            translate([0, 0, 2])
                cube([11.5, 5.25, 2]);
            translate([0, 23, 0]) mirror([0, 1, 0]) {
                cube([64.8, 2.75, 3]);
                translate([0, 0, 2])
                    cube([11.5, 6.25, 2]);
            }
            hull(){
                translate([55.8, 20.25, 0.5])
                    cube([9, 1, 2]);
                translate([53.8, 0, 0.5])
                    cube([3, 23, 2]);
            }
        }
        translate([43.8, 0, 0])
            cube([3, 23, 3]);
        translate([41.8, 0, 2])
            cube([4, 5.75, 2]);
        translate([41.8, 16.25, 2])
            cube([4, 6.75, 2]);
    }
}}

module arduinoNanoUSBCHolderBottom () { union(){
    translate([0, -11, 0]) {
        translate([-10, 0, 0]) {
            translate([0, 0, -50])
                cube([11.5, 5.25, 50]);
            translate([0, 23, 0]) mirror([0, 1, 0]) {
                translate([0, 0, -50])
                    cube([11.5, 6.25, 50]);
            }
        }
        translate([41.8, 0, -50])
            cube([4, 5.75, 50]);
        translate([41.8, 16.25, -50])
            cube([4, 6.75, 50]);
    }
}}









module ArduinoProMicroUSBCHolder () { union(){
    translate([0, -11, -3.6]) {
        translate([-10, 0, 0]) {
            cube([17, 1.75, 3]);
            translate([41, 0, 0])
                cube([4, 1.75, 3]);
            translate([0, 0, 2])
                cube([14, 4, 2]);
            translate([0, 23, 0]) mirror([0, 1, 0]) {
                cube([45, 2.75, 3]);
                translate([0, 0, 2])
                    cube([14, 5, 2]);
            }
        }
        translate([34.5, 0, 0]) {
            cube([3, 23, 3]);
        }
        translate([33, 4.65 + 1.8, 2])
            cube([4.5, 9, 2]);
    }
}}
