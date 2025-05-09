module hotswapSocket () {
    rotate (180, [0, 0, 1]) rotate (90, [-1, 0, 0]) {
        translate([0, 3, -4.5]) {
            import("../imports/1_X_Kailh_Socket_Holder2.stl");
        }
        translate([0, 1.5, 0]) {
            difference(){
                cube([18.6, 3, 18.6], true);
                cube(14.2, true);
            }
        }
    }
}



module defaultSocket(){
        translate([0, 0, -1.5]) {
            difference(){
                union(){
                    cube([18.6, 18.6, 3], true);
                    translate([0, 0, -0.75])
                        cube([18.6, 8, 4.5], true);
                }
                cube(14.2, true);
            }
         hull () {
           translate ([7.75, 0, -0.75]) {
             cube ([1.5, 2.75, 4.5], center=true);
           }
           translate ([7, 0, -2]) {
             rotate (a=90, v=[1, 0, 0]) {
               cylinder (h=2.75, r=1, center=true);
             }
           }
         }
         mirror([1, 0, 0]) hull () {
           translate ([7.75, 0, -0.75]) {
             cube ([1.5, 2.75, 4.5], center=true);
           }
           translate ([7, 0, -2]) {
             rotate (a=90, v=[1, 0, 0]) {
               cylinder (h=2.75, r=1, center=true);
             }
           }
         }
        }
}
