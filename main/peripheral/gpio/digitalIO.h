/*! \file digitalIO.h
 * \brief Declaration of functions used for controlling digital pins.
 */

#ifndef DIGITALIO_H
#define	DIGITALIO_H

#include <Generic.h>

typedef struct digitalPin {
    int *trisReg;
    int *portReg;
    UINT8 pinNum;
} digitalPin;

/*! \brief Function configures digital pin as output pin.
 *
 * @param pin Digital pin to be set.
 */
void digitalOutput(digitalPin pin);

/*! \brief Function sets digital pin in output high state.
 *
 * @param pin Digital pin to be set.
 */
void digitalHigh(digitalPin pin);

/*! \brief Function sets digital pin in output low state.
 *
 * @param pin Digital pin to be set.
 */
void digitalLow(digitalPin pin);

#endif	/* DIGITALIO_H */
