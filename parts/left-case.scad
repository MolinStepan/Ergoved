include <../keyboard/include.scad>

mirror([1, 0, 0])
   addToCaseUnderRing(){
       TRRSHolder();
       TRRSHole();
       addToCaseUnderPinky(height = 3){
           arduinoNanoUSBCHolder();
           USBCHoleDefault();
           addThumbCluster()
               case(){mirror([1, 0, 0]) defaultSocket();};
       }
   }
