//
//
// +ang  +-------+  -ang
//    <--+       +-->
//
//          f2
//       f1  |  f3
//        |  |  |  f4
//         \ | /   |
//  y  th  | | |  /
// ^    |  | | |  |
// |    \  ######/
// |     \ #######
// |      \#######
// |
// +--------> x
// z is height, upper is positive
// vector is [x, y, z]
// angles in degrees, vectors in millimeters
//
// Relax your hand and measure fingertips position. Don't try to be too precise
// Thumb probably should be bent to +ang direction a little, not sure what is the most ergonomic approach

f1ang = 5;
f1pos = [-22, -6, 3];

f3ang = -5;
f3pos =[22, -8, 5];

f4ang = -15;
f4pos = [48, -25, 10];

thumbPos = [-50, -67, 0];

//distance between M2 bolts on your trackball sensor, from center
ballBoltDistance = 13;


// do not change, measure from here
f2ang = 0;
f2pos = [0, 0, 0];
