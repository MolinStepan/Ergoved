include <values.scad>

use <case.scad>
use <utils.scad>

module bottom() { difference() { union() {
    linear_extrude(2, [0, 0, 1])
        projection()
            plateClosedBig();

    translate(M3BoltLocation1)
        cylinder(2, 4.255, 4.255);
    translate(M3BoltLocation2)
        cylinder(2, 4.255, 4.255);
    translate(M3BoltLocation3)
        cylinder(2, 4.255, 4.255);
    translate(M3BoltLocation4)
        cylinder(2, 4.255, 4.255);
}

    translate([0, 0, 2])
        linear_extrude(100, [0, 0, 1])
            projection()
                plateClosedBig();

    translate(M3BoltLocation1)
        union(){
            translate([0, 0, -1])
                cylinder(4, 4, 0);
            cylinder(3, 1.5);
        }
    translate(M3BoltLocation2)
        union(){
            translate([0, 0, -1])
                cylinder(4, 4, 0);
            cylinder(3, 1.5);
        }
    translate(M3BoltLocation3)
        union(){
            translate([0, 0, -1])
                cylinder(4, 4, 0);
            cylinder(3, 1.5);
        }
    translate(M3BoltLocation4)
        union(){
            translate([0, 0, -1])
                cylinder(4, 4, 0);
            cylinder(3, 1.5);
        }
}}
module legs(){ union(){
    difference(){
        union(){
            hull(){
                translate([0, 0, 4.5 + 2 + 7.5]) rotate(90, [1, 0, 0])
                    cylinder(8, 4.5, 4.5, true);
                translate([0, 0, 4])
                    cube([9, 8, 2], true);
            }
            hull(){
                translate([0, 19, 4.5 + 2 + 7.5]) rotate(90, [1, 0, 0])
                    cylinder(6, 4.5, 4.5, true);
                translate([0, 19, 1])
                    cube([9, 6, 2], true);
            }
            hull(){
                translate([0, -19, 4.5 + 2 + 7.5]) rotate(90, [1, 0, 0])
                    cylinder(6, 4.5, 4.5, true);
                translate([0, -19, 1])
                    cube([9, 6, 2], true);
            }
        }
        translate([0, 19, 4.5 + 2 + 7.5]) rotate(90, [1, 0, 0])
            cylinder(100, 2, 2, true);
    }


    difference(){
        translate([0, 0, 3.725])
            cube([9, 44, 7.5], true);

        cube([20, 14, 5], true);

    }
    translate([-angLen(60) -2.5, 7, 0])
        cube([60 + angLen(60) + 2.5, 4, 7.5]);
    translate([-angLen(60) -2.5, -11, 0])
        cube([60 + angLen(60) + 2.5, 4, 7.5]);

    translate([-angLen(60) -2.5, 7, 0])
        cube([4, 60, 7.5]);
    translate([-angLen(60) -2.5, -67, 0])
        cube([4, 60, 7.5]);

    translate([56, -67, 0])
        cube([4, 134, 7.5]);

    hull(){
        translate([-angLen(60) +1, 65, 0])
            cylinder(7.5, 2, 2);
        translate([0, 19.5, 0])
            cylinder(7.5, 2, 2);
    }
    hull(){
        translate([-angLen(60) +1, -65, 0])
            cylinder(7.5, 2, 2);
        translate([0, -19.5, 0])
            cylinder(7.5, 2, 2);
    }
    hull(){
        translate([57, 65, 0])
            cylinder(7.5, 2, 2);
        translate([0, 19.5, 0])
            cylinder(7.5, 2, 2);
    }
    hull(){
        translate([57, -65, 0])
            cylinder(7.5, 2, 2);
        translate([0, -19.5, 0])
            cylinder(7.5, 2, 2);
    }

    hull(){
        translate([-angLen(60)/1.5, -50, 0])
            cylinder(7.5, 2, 2);
        translate([37, -50, 0])
            cylinder(7.5, 2, 2);
    }
    hull(){
        translate([-angLen(60)/1.5, 50, 0])
            cylinder(7.5, 2, 2);
        translate([37, 50, 0])
            cylinder(7.5, 2, 2);
    }



    translate([-angLen(60), 0, 5]) rotate(90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(67.5), 0, 5]) rotate(90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(75), 0, 5]) rotate(90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(82.5), 0, 5]) rotate(90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(90), 0, 5]) rotate(90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);

    translate([-angLen(60), 0, 5]) rotate(-90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(67.5), 0, 5]) rotate(-90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(75), 0, 5]) rotate(-90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(82.5), 0, 5]) rotate(-90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);
    translate([-angLen(90), 0, 5]) rotate(-90, [1, 0, 0]) translate([0, 0, 2])
        cylinder(7, 2.5, 2.5, false);


    translate([-20, 0, 5])
        cube([20, 17, 5], true);


}}



module leg(){
    difference(){
        union(){
            hull(){
                translate([0, 0, 4.5 + 2 + 5 + 2.5]) rotate(90, [1, 0, 0])
                    cylinder(20, 4.5, 4.5, true);
                translate([0, 0, 8])
                    cube([9, 20, 1], true);
            }
        }
        translate([0, 0, 14]) rotate(90, [1, 0, 0])
            cylinder(100, 2, 2, true);
        translate([0, 0, 14]) rotate(90, [1, 0, 0])
            cylinder(12, 4.6 ,4.6, true);
    }
        translate([0, 0, 4.625])
            cube([9, 14, 9.25], true);

    translate([-sqrt(stick^2 - 9^2)/2, 0, 1.25])
        cube([sqrt(stick^2 - 9^2), 14, 2.5], true);
    translate([-sqrt(stick^2 - 9^2)/2 + 0.75, 0, -1.5])
        cube([sqrt(stick^2 - 9^2)+7.5, 3, 6], true);
    translate([-sqrt(stick^2 - 9^2) + 2.5, 0, 8.75])
        cube([5, 14, 2.5], true);
    translate([-sqrt(stick^2 - 9^2) + 2.5, 0, 5])
        cube([5, 3, 6], true);
    translate([-sqrt(stick^2 - 9^2), 0, 5]) rotate(90, [1, 0, 0])
        cylinder(3, 3, 3, true);

    translate([-sqrt(stick^2 - 9^2), 0, 0]) rotate(90, [1, 0, 0]) translate([0, 5, -7]) difference(){
        cylinder(14, 5, 5);
        cylinder(14, 2.5, 2.5);
        translate([0, -10, 0])
            cube(20);
    }
}
module thumbCluster(){ difference () { union() {
    translate([0, 0, 9]){
        fourBlock(){children();};
    }
// walls
    union () {
        intersection(){
            difference(){
                linear_extrude(17, [0, 0, 1]) difference(){
                    hull() projection()
                        fourBlock(2){closed();}
                    hull() projection()
                        fourBlock(-2){closed();}
                }
                for(i = [0:7])
                    translate([0, 0, 11 + 2*i])
                        hull() fourBlock(3){closed();};
            }
            hull(){
                translate([0, 0, -50])
                    cube([1, 100, 1], true);
                translate([0, 0, 50])
                    cube([100, 100, 1], true);
            }
        }
    }
    intersection(){
        union(){
            translate([-27, 0, 0])
                rotate(65, [0, 1, 0])
                    cube([100, 100, 3], true);
            translate([27, 0, 0])
                rotate(-65, [0, 1, 0])
                    cube([100, 100, 3], true);
        }
        linear_extrude(17, [0, 0, 1])
            hull() projection()
                fourBlock(2){closed();}
    }

// connect sockets and walls
    intersection(){
        translate([0, 0, 9]) fourBlock(){translate([0, -12, -1.5]) cube([22, 6, 3], true);};
        linear_extrude(17, [0, 0, 1])
            hull() projection()
                fourBlock(2){closed();}
    }
// close holes
    hull(){
        translate([10, 10, 8]) sphere(1.5);
        translate([33, 10, 14]) sphere(1.5);
        translate([10, 20, 9]) sphere(1.5);
    }
    hull(){
        translate([-10, 10, 8]) sphere(1.5);
        translate([-33, 10, 14]) sphere(1.5);
        translate([-10, 20, 9]) sphere(1.5);
    }
    hull(){
        translate([10, -10, 8]) sphere(1.5);
        translate([33, -10, 14]) sphere(1.5);
        translate([10, -20, 9]) sphere(1.5);
    }
    hull(){
        translate([-10, -10, 8]) sphere(1.5);
        translate([-33, -10, 14]) sphere(1.5);
        translate([-10, -20, 9]) sphere(1.5);
    }
    // M3 Bolts
        translate([20 * sin(-50), 20 * cos(-50), 8])
            cylinder(4, 3.5, 3.5, true);
        translate([-20 * sin(-50), -20 * cos(-50), 8])
            cylinder(4, 3.5, 3.5, true);

        translate([20 * sin(-50), 20 * cos(-50), 6])
            cylinder(3.8, 4.5, 4.5, false);
        translate([-20 * sin(-50), -20 * cos(-50), 6])
            cylinder(3.8, 4.5, 4.5, false);

}
        translate([20 * sin(-50), 20 * cos(-50), 0])
            cylinder(6, 4.255, 4.255);
        translate([-20 * sin(-50), -20 * cos(-50), 0])
            cylinder(6, 4.255, 4.255);

        translate([20 * sin(-50), 20 * cos(-50), 8])
            cylinder(100, 3.5, 3.5);
        translate([-20 * sin(-50), -20 * cos(-50), 8])
            cylinder(100, 3.5, 3.5);

        translate([-20 * sin(-50), -20 * cos(-50), 5])
            cylinder(3.5, 0, 3.5);
        translate([-20 * sin(-50), -20 * cos(-50), 5])
            cylinder(10, 1.5, 1.5);
        translate([20 * sin(-50), 20 * cos(-50), 5])
            cylinder(3.5, 0, 3.5);
        translate([20 * sin(-50), 20 * cos(-50), 5])
            cylinder(10, 1.5, 1.5);
}
}


module ballHolder () { render() { union () {

    difference(){
    union(){
        translate([0, 0, -3])
        linear_extrude(3, [0, 0, 1]) {
            difference(){
                circle(20);
                circle(17);
            }
        }
        difference(){
            union(){
                translate ([0, 17.5, -3])
                   cylinder(15, 4, 4);
                rotate(124.5, [0, 0, 1]) translate ([0, 18, -3])
                   cylinder(21.3, 3.5, 3.5);
                rotate(235.5, [0, 0, 1]) translate ([0, 18, -3])
                   cylinder(21.3, 3.5, 3.5);
            }

            // ball holders
            translate([0, 0, 23]) rotate(-15, [1, 0, 0]) translate([0, 0, -23])
                for(i = [0 : 2]) rotate(120 * i, [0, 0, 1]) translate ([0, 17.5, -3])
                    #translate([0, 0, 26 - sqrt(19^2 - 17.5^2)])
                        sphere(2.1);

            translate([0, 0, -4])
                linear_extrude(12, [0, 0, 1])
                    circle(17);
            translate([0, 0, -4])
                linear_extrude(100, [0, 0, 1])
                    intersection(){
                        circle(17);
                        translate([0, -20, 0])
                            square(40, true);
                    }
        }
        // M3 holders
        hull(){
            translate([20 * sin(30), 20 * cos(30), -3])
                cylinder(3, 4.255, 4.255);

            translate([18.5 * sin(50), 18.5 * cos(50), -3])
                cylinder(3, 2, 2);
            translate([18.5 * sin(10), 18.5 * cos(10), -3])
                cylinder(3, 2, 2);
        }

        hull(){
            translate([-20 * sin(30), -20 * cos(30), -3])
                cylinder(3, 4.255, 4.255);

            translate([-18.5 * sin(50), -18.5 * cos(50), -3])
                cylinder(3, 2, 2);
            translate([-18.5 * sin(10), -18.5 * cos(10), -3])
                cylinder(3, 2, 2);
        }

        hull(){
            translate([ballBoltDistance, 0, -3])
                cylinder(3, 3.5, 3.5);
            translate([16.5, 0, -3])
                cylinder(3, 3.5, 3.5);
        }

        hull(){
            translate([-ballBoltDistance, 0, -3])
                cylinder(3, 3.5, 3.5);
            translate([-16.5, 0, -3])
                cylinder(3, 3.5, 3.5);
        }
    }
    translate([0, 0, 23])
        sphere(18);

    // M3 holes
    translate([20 * sin(30), 20 * cos(30), -4])
        cylinder(6, 1.5, 1.5);
    translate([20 * sin(30), 20 * cos(30), -3])
        cylinder(5, 0, 5);
    translate([-20 * sin(30), -20 * cos(30), -4])
        cylinder(6, 1.5, 1.5);
    translate([-20 * sin(30), -20 * cos(30), -3])
        cylinder(5, 0, 5);

    // sensor M2 heat set insets
    translate ([ballBoltDistance, 0, -2])
        cylinder (h=5, r1=1.77, r2=1.7, center=true);
    translate ([-ballBoltDistance, 0, -2])
        cylinder (h=5, r1=1.77, r2=1.7, center=true);
    }

}}}
