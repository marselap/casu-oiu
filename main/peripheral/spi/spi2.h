/*! \file spi2.h
 * \brief Declaration of functions and variables used for controlling SPI2 bus.
 */

#ifndef SPI2_H
#define	SPI2_H

#if defined(__PIC24F__)
#include <p24Fxxxx.h>
#elif defined(__dsPIC33F__)
#include <p33Fxxxx.h>
#elif defined(__dsPIC33E__)
#include <p33Exxxx.h>
#endif

#include <Generic.h>

#include "../gpio/digitalIO.h"

/*! \brief Macro used for selecting a SPI device by putting corresponding chip select pin to digital low.
 */
#define chipSelect(slave) digitalLow(slave)

/*! \brief Macro used for deselecting a SPI device by putting corresponding chip select pin to digital high.
 */
#define chipDeselect(slave) digitalHigh(slave)

/*! \brief Function initializes SPI2 bus.
 *
 *  @param mode SPI mode, possible modes are 0, 1, 2, 3
 *  @param int_en Interrupt enable flag, 1 - enable spi interrupts, 0 - disable
 *  @return Function returns 1 if initialization succeeded, else 0.
 */
UINT8 spi2Init(UINT8 mode, UINT8 int_en);

/*! \brief Function sends 16 bit data over SPI2 bus.
 *
 * @param  data 16 bit data.
 * @return Returns 1 if sending succeeded, else 0.
 */
UINT8 spi2Write(UINT16 data);

/*! \brief Function sends and receives 16 bit data over SPI2 bus.
 * @param out 16 bit data to be send.
 * @param in Pointer to a memory location where incoming 16 bit data is saved.
 * @return Return 1 if transfer succeeded, else 0.
 */
UINT8 spi2TransferWord(UINT16 out, UINT16 *in);

/*! \brief Function sends data stored in a buffer over SPI2 bus and stores the received data in the same buffer.
 *
 * @param buff Pointer to the buffer.
 * @param len Buffer size.
 * @return Returns 1 if transfer succeeded, else 0.
 */
UINT8 spi2TransferBuff(UINT16 *buff, UINT16 len);

#endif	/* SPI2_H */

