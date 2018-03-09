#include "digitalIO.h"

void digitalOutput(digitalPin pin) {
    UINT16 mask = 0x0001;
    mask = mask << pin.pinNum;
    *pin.trisReg = (*pin.trisReg) & (~mask);
}

/* Function sets digital pin to 0
 * inputs: pin - digital pin
 * return: None
 * Example of usage:
 * digitalPin pin;
 * pin.port = &PORTAbits;
 * pin.pinNum = 0;
 * digitalLow(pin);
 */
void digitalLow(digitalPin pin) {
    UINT16 mask = 0x0001;
    mask = mask << pin.pinNum;
    *pin.portReg = (*pin.portReg) & (~mask);
}

/* Function sets digital pin to 1
 * inputs: pin - digital pin
 * return: None
 * Example of usage:
 * digitalPin pin;
 * pin.port = &PORTAbits;
 * pin.pinNum = 0;
 * digitalHigh(pin);
 */
void digitalHigh(digitalPin pin) {
    UINT16 mask = 0x0001;
    mask = mask << pin.pinNum;
    *pin.portReg = (*pin.portReg) | (mask);
}
