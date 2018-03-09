#include "initializeHardware.h"
#include "../peripheral/timer/timerFunctions.h"
#include "../peripheral/i2c/i2c2.h"
#include "../sensors/adxl345/adxl345.h"
#include "../sensors/adt7320/adt7320.h"
#include "../peripheral/timer/timer2.h"

/*
digitalPin LED2R = {&TRISEbits, &PORTEbits, 6};
digitalPin LED2G = {&TRISCbits, &PORTCbits, 2};
digitalPin LED2B = {&TRISCbits, &PORTCbits, 3};
*/ 

/* Define and initialize digital pins used as chip select pins*/
digitalPin aSlaveR = {&TRISEbits, &PORTEbits, 8};
digitalPin aSlaveF = {&TRISGbits, &PORTGbits, 12};
digitalPin aSlaveB = {&TRISDbits, &PORTDbits, 5};
digitalPin aSlaveL = {&TRISBbits, &PORTBbits, 9};

/*define slaves' chip select pins*/
digitalPin tSlaveF = {&TRISBbits, &PORTBbits, 5};
digitalPin tSlaveL = {&TRISAbits, &PORTAbits, 6};
digitalPin tSlaveB = {&TRISAbits, &PORTAbits, 4};
digitalPin tSlaveR = {&TRISBbits, &PORTBbits, 10};
digitalPin slaveVib = {&TRISDbits, &PORTDbits, 4};


//I2C1 mux reset pin
digitalPin MUXRST = {&TRISAbits, &PORTAbits, 15};

//Peltier bridge inputs
digitalPin PEL_L = {&TRISEbits, &PORTEbits, 0};
digitalPin PEL_H = {&TRISEbits, &PORTEbits, 1};

void setUpPorts() {
    /* Set port configuration */
    ANSELA = ANSELB = ANSELC = ANSELD = ANSELE = ANSELG = 0x0000;; // all ports digitaL
    delay_t1(20);
    
    // configure accelerometer SPI chip select ports as outputs
    digitalOutput(aSlaveF);
    digitalHigh(aSlaveF);
    digitalOutput(aSlaveR);
    digitalHigh(aSlaveR);
    digitalOutput(aSlaveB);
    digitalHigh(aSlaveB);
    digitalOutput(aSlaveL);
    digitalHigh(aSlaveL);

    // configure temperature sensor SPI chip select ports as outputs
    digitalOutput(tSlaveF);
    digitalHigh(tSlaveF);
    digitalOutput(tSlaveR);
    digitalHigh(tSlaveR);
    digitalOutput(tSlaveB);
    digitalHigh(tSlaveB);
    digitalOutput(tSlaveL);
    digitalHigh(tSlaveL);
    digitalOutput(slaveVib);
    digitalHigh(slaveVib);

    
    //I2C1 mux reset pin
    digitalOutput(MUXRST);

    digitalOutput(PEL_L);
    digitalOutput(PEL_H);
    digitalLow(PEL_L);
    digitalLow(PEL_H);

}