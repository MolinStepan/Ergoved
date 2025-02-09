include <values.scad>

use <utils.scad>

module plateInternal (shift = 0) { union () {
    threeBlock(f1ang, f1pos) {
        union(){
            children();
            socketAddBorders(0, 3.5 + shift, 3 + shift, 1.500);
        }
        union(){
            children();
            socketAddBorders(0, 1.500, 3 + shift, 1.500);
        }
        union(){
            children();
            socketAddBorders(0, 1.500, 3 + shift, 3.5 + shift);
        }
    };
    threeBlock(f2ang, f2pos) {
        union(){
            children();
            socketAddBorders(0, 3.5 + shift, 0, 1.500);
        }
        union(){
            children();
            socketAddBorders(0, 1.500, 0, 1.500);
        }
        union(){
            children();
            socketAddBorders(0, 1.500, 0, 3.5 + shift);
        }
    };
    threeBlock(f3ang, f3pos) {
        union(){
            children();
            socketAddBorders(0, 3.5 + shift, 0, 1.500);
        }
        union(){
            children();
            socketAddBorders(0, 1.500, 0, 1.500);
        }
        union(){
            children();
            socketAddBorders(0, 1.500, 0, 3.5 + shift);
        }
    };
    threeBlock(f4ang, f4pos) {
        union(){
            children();
            socketAddBorders(3 + shift, 3.5 + shift, 0, 1.500);
        }
        union(){
            children();
            socketAddBorders(3 + shift, 1.500, 0, 1.500);
        }
        union(){
            children();
            socketAddBorders(3 + shift, 1.500, 0, 3.5 + shift);
        }
};
    connectBlocks (f1ang, f1pos, f2ang, f2pos, 3.5 + shift);
    connectBlocks (f2ang, f2pos, f3ang, f3pos, 3.5 + shift);
    connectBlocks (f3ang, f3pos, f4ang, f4pos, 3.5 + shift);
}}

module plate() {plateInternal(){children();};}

module plateClosedSmall () { plateInternal(-3){closed();};}

module plateClosedBig () { plateInternal(){closed();};}

module plateClosedEvenBigger () { plateInternal(5){closed();};}



module caseWalls() { render() {
    difference() { union(){
        translate([0, 0, -10])
            linear_extrude(30, [0, 0, 1])
                projection()
                    plateClosedBig();
            union(){

            hull(){
                translate([4, centerOfMass.y, -5.5] + lowestPosition) rotate(90, [1, 0, 0])
                    cylinder(4, 4.5, 4.5, true);
                translate([4, centerOfMass.y, -10] + lowestPosition - [60, 2, 0])
                    cube([30, 4, 25]);
            }
            hull (){
                translate([4, centerOfMass.y - 20, -5.5] + lowestPosition) rotate(90, [1, 0, 0])
                    cylinder(4, 4.5, 4.5, true);
                translate([4, centerOfMass.y - 20, -10] + lowestPosition - [60, 2, 0])
                    cube([30, 4, 25]);
            }

            translate([4, centerOfMass.y, -5.5] + lowestPosition) rotate(90, [1, 0, 0])
                cylinder(12, 4.5, 4.5, true);
            translate([4, centerOfMass.y - 20, -5.5] + lowestPosition) rotate(90, [1, 0, 0])
                cylinder(12, 4.5, 4.5, true);

            translate([4, centerOfMass.y, -7.5] + lowestPosition - [30, 6, 0])
                cube([30, 12, 4]);
            translate([4, centerOfMass.y - 20, -7.5] + lowestPosition - [30, 6, 0])
                cube([30, 12, 4]);


            hull(){
                translate([-4, centerOfMass.y - 10, -5.5] + highestPosition) rotate(90, [1, 0, 0])
                    cylinder(4, 4.5, 4.5, true);
                translate([-4, centerOfMass.y - 10, -10] + highestPosition - [-30, 2, 0])
                    cube([30, 4, 25]);
            }
            translate([-4, centerOfMass.y - 10, -5.5] + highestPosition) rotate(90, [1, 0, 0])
                cylinder(12, 4.5, 4.5, true);
            translate([-4, centerOfMass.y - 10, -7.5] + highestPosition - [0, 6, 0])
                cube([30, 12, 4]);







        }

        }
    translate([4, centerOfMass.y, -5.5] + lowestPosition) rotate(90, [1, 0, 0])
        cylinder(1000, 2, 2, true);
    translate([-4, centerOfMass.y, -5.5] + highestPosition) rotate(90, [1, 0, 0])
        cylinder(1000, 2, 2, true);

        translate([0, 0, -50])
            linear_extrude(100, [0, 0, 1])
                projection()
                    plateClosedSmall();

        for(i = [0:10])
            translate([0, 0, 2*i + 3.2])
                plateClosedEvenBigger();
    }
}}


module case() {
addM3Bolt(M3BoltLocation1)
addM3Bolt(M3BoltLocation2)
addM3Bolt(M3BoltLocation3)
addM3Bolt(M3BoltLocation4)
{
    translate([0, 0, 10]) union() {
        plate(){children();};
        caseWalls();
    }}
}
