include <../keyboard/include.scad>

addToCaseUnderRing(){
    TRRSHolder();
    TRRSHole();
    addToCaseUnderPinky(height = 3){
        arduinoNanoUSBCHolder();
        USBCHoleDefault();
        addTrackball()
            case(){defaultSocket();};
    }
}
