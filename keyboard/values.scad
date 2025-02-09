include <../variables.scad>

$fn = 100;

jackHoleDiameter = 9;
usbcHoleLength = 14;
usbcHoleWidth = 8;


ballPortPos = thumbPos + [34 + 6, 0, 15 + 10 + 9];
thumbClusterAng = -30;
thumbClusterPos = thumbPos + [-25*sin(thumbClusterAng), 25*cos(thumbClusterAng), 15 + 10 + 9]; // [-28, -48, 30];

M3BoltLocation1 = ((f4pos + f3pos +
  [ -sin(f4ang) * 32 -sin(f3ang) * 32
  , cos(f4ang) * 32 + cos(f3ang) * 32
  , -f4pos.z -f3pos.z
  ])/2);
M3BoltLocation2 = (f1pos +
  [ -sin(f1ang) * 29.5 - cos(f1ang) * 9
  , cos(f1ang) * 29.5 - sin(f1ang) * 9
  , -f1pos.z]);
M3BoltLocation3 = (f4pos +
  [ sin(f4ang) * 29.5 + cos(f4ang) * 9
  , -cos(f4ang) * 29.5 + sin(f4ang) * 9
  , -f4pos.z]);
M3BoltLocation4 = (f1pos +
  [ sin(f1ang) * 29.5 - cos(f1ang) * 9
  , -cos(f1ang) * 29.5 - sin(f1ang) * 9
  , -f1pos.z]);



lowestPosition = [(f4pos +
  [ -sin(f4ang) * 30.6 + cos(f4ang) * 14
  , cos(f4ang) * 30.6 + sin(f4ang) * 14
  , -f4pos.z
  ]).x, 0, 0];
highestPosition = [(f1pos +
  [ -sin(f1ang) * 30.6 - cos(f1ang) * 14
  , cos(f1ang) * 30.6 - sin(f1ang) * 14
  , -f4pos.z
  ]).x, 0, 0];

centerOfMass =
  ( f1pos
  + f2pos
  + f3pos
  + f4pos
  ) / 4;


f1col = [-sin(f1ang), cos(f1ang), 0];
f1ort = [cos(f1ang), sin(f1ang), 0];
f2col = [-sin(f2ang), cos(f2ang), 0];
f2ort = [cos(f2ang), sin(f2ang), 0];
f3col = [-sin(f3ang), cos(f3ang), 0];
f3ort = [cos(f3ang), sin(f3ang), 0];
f4col = [-sin(f4ang), cos(f4ang), 0];
f4ort = [cos(f4ang), sin(f4ang), 0];

distance = 8 + lowestPosition.x - highestPosition.x;
stick = distance + 15;


function angLen(ang) = sqrt(stick^2 - (sin(ang) * distance + 9)^2) + cos(ang)*distance;
