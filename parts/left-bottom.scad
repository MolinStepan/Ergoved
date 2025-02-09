include <../keyboard/include.scad>


mirror([1, 0, 0])
   addToBottomUnderRing(){
       TRRSHolderBottom();
       addToBottomUnderPinky(height = 3){
           arduinoNanoUSBCHolderBottom();
           bottom();
       }
   }
