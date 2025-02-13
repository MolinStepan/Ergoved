include <values.scad>

use <utils.scad>
use <case.scad>
use <other-parts.scad>

module thumbClusterPort(){
    addM3Bolt([20 * sin(-50), 20 * cos(-50), 9.5], 180)
    addM3Bolt([-20 * sin(-50), -20 * cos(-50), 9.5], 180)
    union() {
        linear_extrude(3.5, [0, 0, 1]) union(){
            projection()
                 intersection() {
                     translate([0, 0, -0.0001])
                         thumbCluster();
                     translate([0, 0, -1])
                         cube([100, 100, 2], true);
                 }
            translate([0, 17.8])
                square([35, 4], true);
            translate([0, -17.8])
                square([35, 4], true);
            polygon([[-5, 20], [-27, 15], [-14, 7]]);
            polygon(-1*[[-5, 20], [-27, 15], [-14, 7]]);
        }
        linear_extrude(1, [0, 0, 1]) union(){
            projection() hull ()
                 intersection() {
                     translate([0, 0, -0.0001])
                         thumbCluster();
                     translate([0, 0, -1])
                         cube([100, 100, 2], true);
                 }
        }
}}

module addThumbCluster () {
difference(){
    union () {
        translate(thumbClusterPos) rotate(thumbClusterAng, [0, 0, 1]) rotate(90, [1, 0, 0]) rotate(90, [0, 0, 1]) {
            translate([0, 0, -7])thumbClusterPort();
        }

        rotatingWall
          ( [for (i = [0:9]) f1pos + [0, 0, 6] - f1ort*10 -f1col*5 + i*2*(f1col)]
          , [for (i = [0:9]) thumbClusterPos + -18*[cos(thumbClusterAng), sin(thumbClusterAng), 0.4] -6 * [sin(thumbClusterAng), -cos(thumbClusterAng), 0]+ i*2*[0, 0, 1]]
          , 2
          );

        rotatingWall
          ( [for (i = [0:9]) f2pos + [0, 0, 15] - f2ort*9 -f2col*33 + i*2*(f2ort)]
          , [for (i = [0:9]) thumbClusterPos + 18 *[cos(thumbClusterAng), sin(thumbClusterAng), -0.4] -6* [sin(thumbClusterAng), -cos(thumbClusterAng), 0] + i*2*[0, 0, 1]]
          , 2
          );


//        translate(thumbClusterPos + [10*cos(thumbClusterAng), 10*sin(thumbClusterAng), -21]) rotate(thumbClusterAng, [0, 0, 1])
//            rotate(-90, [1, 0, 0]) translate([0, 0, 6.5])
//                cylinder(50, 5, 5);
    }
    translate([0, 0, -10])
        linear_extrude(30, [0, 0, 1])
            projection()
                plateClosedSmall();
    translate(thumbClusterPos + [10*cos(thumbClusterAng), 10*sin(thumbClusterAng), -21]) rotate(thumbClusterAng, [0, 0, 1])
        rotate(-90, [1, 0, 0]) translate([0, 0, 5.5])
            cylinder(52, 4, 4);

}




difference(){
    children();
//    translate(thumbClusterPos + [10*cos(thumbClusterAng), 10*sin(thumbClusterAng), -21]) rotate(thumbClusterAng, [0, 0, 1])
//        rotate(-90, [1, 0, 0]) translate([0, 0, 5.5])
//            cylinder(22, 4, 4);
    translate(f1pos - f1col*30 - [0, 0, f1pos.z - 3])
        rotate (f1ang, [0, 0, 1] ) rotate(90, [1, 0, 0])
            cylinder(22, 4, 4, true);

    translate(thumbClusterPos - [0, 0, 20]) rotate(thumbClusterAng, [0, 0, 1])
        translate([-20, -33.5, -8.5]) cube(40);
}

}



module addTrackball() {
    difference(){
        union() {
            hull(){
                translate(ballPortPos + [3, 0, 0])
                rotate(90, [0, -1, 0])
                translate([-18.5 * sin(45), 18.5 * cos(45), -4.5])
                    cylinder(9, 1.5, 1.5, true);

                translate(f3pos +
                   [ sin(f3ang) * 31
                   , -cos(f3ang) * 31
                   , 13])
                rotate(f3ang, [0, 0, 1])
                rotate(90, [0, 1, 0])
                    cylinder(15, 1.5, 1.5, true);

            }
            hull(){
                translate(ballPortPos + [3, 0, 0])
                rotate(90, [0, -1, 0])
                translate([-18.5 * sin(-45), 18.5 * cos(-45), -4.5])
                    cylinder(9, 1.5, 1.5, true);

                translate(f3pos +
                   [ sin(f3ang) * 31
                   , -cos(f3ang) * 31
                   , 13])
                rotate(f3ang, [0, 0, 1])
                rotate(90, [0, 1, 0])
                    cylinder(15, 1.5, 1.5, true);

            }
//            hull(){
//                translate(ballPortPos + [3, 0, 0])
//                rotate(90, [0, -1, 0])
//                translate([-18.5 * sin(45), -18.5 * cos(45), -4.5])
//                    cylinder(9, 1.5, 1.5, true);
//
//                translate(f4pos +
//                   [ sin(f4ang) * 31 + cos(f4ang) * 6
//                   , -cos(f4ang) * 31 + sin(f4ang) * 6
//                   , 13])
//                rotate(f4ang, [0, 0, 1])
//                rotate(90, [0, 1, 0])
//                    cylinder(9, 1.5, 1.5, true);
//
//            }
            hull(){
                translate(ballPortPos + [3, 0, 0])
                rotate(90, [0, -1, 0])
                translate([18, 0, -8])
                   sphere(2);
                translate(f4pos +
                   [ sin(f4ang) * 31 + cos(f4ang) * 9
                   , -cos(f4ang) * 31 + sin(f4ang) * 9
                   , 11])
                   sphere(2);

            }
            hull(){
                translate(ballPortPos + [3, 0, 0])
                rotate(90, [0, -1, 0])
                translate([18 * cos(45), -18 * sin(45), -8])
                   sphere(2);
                translate(f4pos +
                   [ sin(f4ang) * 31 + cos(f4ang) * 9
                   , -cos(f4ang) * 31 + sin(f4ang) * 9
                   , 9])
                   sphere(2);
            }
            hull(){
                translate(ballPortPos + [3, 0, 0])
                rotate(90, [0, -1, 0])
                translate([18 * cos(90), -18 * sin(90), -8])
                   sphere(2);
                translate(f4pos +
                   [ sin(f4ang) * 31 + cos(f4ang) * 9
                   , -cos(f4ang) * 31 + sin(f4ang) * 9
                   , 7])
                   sphere(2);
            }
            hull(){
                translate(ballPortPos + [3, 0, 0])
                rotate(90, [0, -1, 0])
                translate([18 * cos(135), -18 * sin(135), -8])
                   sphere(2);
                translate(f4pos +
                   [ sin(f4ang) * 31 + cos(f4ang) * 9
                   , -cos(f4ang) * 31 + sin(f4ang) * 9
                   , 5])
                   sphere(2);
            }
            hull(){
                translate(ballPortPos + [3, 0, 0])
                rotate(90, [0, -1, 0])
                translate([18 * cos(180), -18 * sin(180), -8])
                   sphere(2);
                translate(f4pos +
                   [ sin(f4ang) * 31 + cos(f4ang) * 9
                   , -cos(f4ang) * 31 + sin(f4ang) * 9
                   , 3])
                   sphere(2);
            }
        }
        translate([0, 0, -50])
            linear_extrude(100, [0, 0, 1])
                projection()
                    plateClosedSmall();
    }
    translate(ballPortPos + [3, 0, 0])
    rotate(90, [0, -1, 0])
    addM3Bolt([-20 * sin(60), 20 * cos(60), 0], 180)
    addM3Bolt([20 * sin(60), -20 * cos(60), 0], 180)
        translate([0, 0, -9])
        linear_extrude(9, [0, 0, 1]) {
            difference(){
                circle(20);
                circle(17);
            }
        }
    difference() {
        children();
        translate((f4pos + f3pos +
            [ sin(f4ang) * 32 + sin(f3ang) * 32
            , - cos(f4ang) * 32 - cos(f3ang) * 32
            , -f4pos.z -f3pos.z + 16
            ])/2)
                 cylinder(6, 4, 4, true);
    }
}




module addToCase(pos, ang){
    difference(){
        union(){
            children(2);
            intersection(){
                translate(pos) rotate(ang + 270, [0, 0, 1])
                    children(0);
                translate([0, 0, -50])
                    linear_extrude(100, [0, 0, 1])
                        projection()
                            plateClosedBig();
            }
        }
        translate(pos) rotate(ang + 270, [0, 0, 1])
            children(1);
    }
}

module addToCaseUnderPinky(height = 2){
    addToCase(f4pos +
              [ -sin(f4ang) * 30 - cos(f4ang)
              , cos(f4ang) * 30 - sin(f4ang)
              , -f4pos.z + height
              ], f4ang) {
    children(0);
    children(1);
    children(2);
    }
}
module addToCaseUnderRing(height = 2){
    addToCase(f3pos +
              [ -sin(f3ang) * 30
              , cos(f3ang) * 30
              , -f3pos.z + height
              ], f3ang) {
    children(0);
    children(1);
    children(2);
    }
}


module USBCHoleDefault(){ union () {
    translate([-1.5, -11, 2]) hull(){
        translate([0, 8, 2])rotate(90, [0, -1, 0])
            cylinder(20, 4, 4);
        translate([0, 14, 2])rotate(90, [0, -1, 0])
            cylinder(20, 4, 4);
    }
    translate([0, -11, 2]) hull(){
        translate([0, 8, 1.8])rotate(90, [0, -1, 0])
            cylinder(20, 2, 2);
        translate([0, 14, 1.8])rotate(90, [0, -1, 0])
            cylinder(20, 2, 2);
    }
}}


module TRRSHole(){ union () {
    translate([-1.5, 6, 2.6])rotate(90, [0, -1, 0])
        cylinder(20, 4.5, 4.5);
    translate([0.1, 6, 2.6])rotate(90, [0, -1, 0])
        cylinder(20, 2.5, 2.5);
}}


module TRRSHoleCentered (){ union () {
    translate([-1.5, 0, 2.5])rotate(90, [0, -1, 0])
        cylinder(20, 4.5, 4.5);
    translate([0.1, 0, 2.5])rotate(90, [0, -1, 0])
        cylinder(20, 2.5, 2.5);
}}