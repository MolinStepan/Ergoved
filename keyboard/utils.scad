module rotatingWall(arr1, arr2, thickness)
{
//    if(len(arr1) != len(arr2))
    for(i = [0 : len(arr1)-2]) union() {
        hull(){
            translate(arr1[i])
                sphere(thickness, true);
            translate(arr1[i+1])
                sphere(thickness, true);
            translate(arr2[i])
                sphere(thickness, true);
        }
        hull(){
            translate(arr2[i])
                sphere(thickness, true);
            translate(arr2[i+1])
                sphere(thickness, true);
            translate(arr1[i])
                sphere(thickness, true);
        }
    }
}



module socketAddBorders (right, top, left, bottom) {
    difference(){
        translate([-9.3 - left, -9.3 - bottom, -3]) {
            cube([18.6 + right + left, 18.6 + top + bottom, 3]);
        }
        translate([0, 0, -10])
            cube([18.5, 18.5, 20], true);
    }
}

module closed () {
    translate([0, 0, -2]) {
        cube([18.6, 18.6, 2], true);
    }
}



module threeBlock (ang, pos) {
    translate(pos) { rotate (ang, [0, 0, 1]) {
    translate([0, 0, 15*12.2/PI]) rotate (-20, [-1, 0, 0]) translate([0, 0, -15*12.2/PI])
        children(0);
    translate([0, 0, 15*12.2/PI]) rotate (0, [-1, 0, 0]) translate([0, 0, -15*12.2/PI])
        children(1);
    translate([0, 0, 15*12.2/PI]) rotate (20, [-1, 0, 0]) translate([0, 0, -15*12.2/PI])
        children(2);
    }}
}




module fourBlock(d = 0){
    translate([0, 0, 15*12.2/PI]) rotate (10, [-1, 0, 0]) translate([0, 0, -15*12.2/PI]) {
        children ();
        socketAddBorders(1.5+d, 1.5+d, 1.5+d, d);
    }
    translate([0, 0, 15*12.2/PI]) rotate (-10, [-1, 0, 0]) translate([0, 0, -15*12.2/PI]) {
        rotate(180, [0, 0, 1])
            children ();
        socketAddBorders(1.5+d, d, 1.5+d, 1.5+d);
    }
    translate([0, 0, 15*14.5/PI]) rotate (20, [0, 1, 0]) translate([0, 0, -15*14.5/PI]) {
        rotate(-90, [0, 0, 1])
            children ();
        socketAddBorders(1.5, 1.5 + d, d, 1.5 + d);
    }
    translate([0, 0, 15*14.5/PI]) rotate (-20, [0, 1, 0]) translate([0, 0, -15*14.5/PI]) {
        rotate(90, [0, 0, 1])
            children ();
        socketAddBorders(0 + d, 1.5 + d, 1.5, 1.5 + d);
    }
    translate([0, 0, 15*14.5/PI]) rotate (10, [0, 1, 0]) translate([0, 0, -15*14.5/PI -2.5])
        cube([7, 20, 4], true);
    translate([0, 0, 15*14.5/PI]) rotate (-10, [0, 1, 0]) translate([0, 0, -15*14.5/PI -2.5])
        cube([7, 20, 4], true);

}


module connectBlocks (ang1, pos1, ang2, pos2, size, shift = 0) {
    hull(){
        translate(pos1) { rotate (ang1, [0, 0, 1]) {
            socketBorder (-20, [-1, 0, 0], false, size, 1.5000, shift);
        }}
        translate(pos2) { rotate (ang2, [0, 0, 1]) {
            socketBorder (-20, [-1, 0, 0], true, size, 1.5000, shift);
        }}
    }
    hull(){
        translate(pos1) { rotate (ang1, [0, 0, 1]) {
            socketBorder (  0, [-1, 0, 0], false, 1.5000, 1.5000, shift);
        }}
        translate(pos2) { rotate (ang2, [0, 0, 1]) {
            socketBorder (  0, [-1, 0, 0], true, 1.5000, 1.5000, shift);
        }}
    }
    hull(){
        translate(pos1) { rotate (ang1, [0, 0, 1]) {
            socketBorder ( 20, [-1, 0, 0], false, 1.5000, size, shift);
        }}
        translate(pos2) { rotate (ang2, [0, 0, 1]) {
            socketBorder ( 20, [-1, 0, 0], true, 1.5000, size, shift);
        }}
    }
}

module socketBorder(ang, axis, left, top, bottom, shift = 0) {
    translate([0, 0, 15*12.2/PI]) rotate (ang, axis) translate([0, 0, -15*12.2/PI]) {
        if(left) {
           translate([-9.3, -9.3 - bottom, -3]) {
                cube([0.01 + shift, 18.6 + top + bottom, 3]);
           }
        } else {
           translate([9.29, -9.3 - bottom, -3]) {
                cube([0.01 + shift, 18.6 + top + bottom, 3]);
           }
        }
    }
}



module addM3Bolt(pos, ang = 0, axis = [1, 0, 0]){
    difference(){
        union(){
          children();
          translate (pos) rotate (ang, axis) translate ([0, 0, 2.65]) {
            union () {
              cylinder (h=5.3, r1=4.255, r2=4.15, center=true);
              translate ([0, 0, 2.65]) {
                sphere (r=4.15);
              }
            }
          }
        }
          translate (pos) rotate (ang, axis) translate ([0, 0, 1.9]) {
          union () {
            cylinder (h=4, r1=2.655, r2=2.55, center=true);
            translate ([0, 0, 2]) {
              sphere (r=2.55);
            }
          }
        }
    }
}
