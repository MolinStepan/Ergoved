include <../keyboard/include.scad>


addToBottomUnderRing(){
    TRRSHolderBottom();
    addToBottomUnderPinky(height = 3){
        arduinoNanoUSBCHolderBottom();
        bottom();
    }
}
