#include "spi2.h"

/* Function initializes SPI 1 bus
 * inputs: mode - SPI mode, possible modes are 0, 1, 2, 3
 *         int_en - interrupt enable, 1 - enable spi interrupts, 0 - disable
 * return: 1 - initialization succeeded
 *         0 - initialization failed
 */
UINT8 spi2Init(UINT8 mode, UINT8 int_en) {

    SPI2STATbits.SPIEN = 0;                  // Disable module
    IFS2bits.SPI2IF = 0;                     // Clear the Interrupt flag
    IEC2bits.SPI2IE = 0;                     // Disable the interrupt

    // SPI2CON1 Register Settings
    SPI2CON1bits.DISSCK = 0;                 // Internal serial clock is enabled
    SPI2CON1bits.DISSDO = 0;                 // SDOx pin is controlled by the module
    SPI2CON1bits.MODE16 = 1;                 // Communication is word-wide (16 bits)
    SPI2CON1bits.SMP = 1;                    // Input data is sampled at the end of data output time
    SPI2CON1bits.CKE = mode & 0x01;          // 1 = Serial output data changes on transition from active clock state to Idle clock state
    SPI2CON1bits.CKP = (mode & 0x02) >> 1;   // 1 = Idle state for clock is a high-level, active is low level
    SPI2CON1bits.SSEN = 0;
    SPI2CON1bits.MSTEN = 1;                  // Master mode enabled
    // Fp = Fosc/2 = 20 Mhz , 20 / 4 / 4 = 1.25 Mhz
    SPI2CON1bits.SPRE = 0b100;                // 8 - spre; second prescaler 111 = 1, 110 = 2, ... 000 = 8
    SPI2CON1bits.PPRE = 0b10;                // pri prescaler 11 = 1, 10 = 4, 01 = 16, 00 = 32
    SPI2STATbits.SPIROV = 0;                 // clear overflow flag
    SPI2STATbits.SPIEN = 1;                  // Enable SPI module
   
    // Interrupt Controller Settings
    IFS2bits.SPI2IF = 0;                     // Clear the Interrupt flag
    IEC2bits.SPI2IE = (int_en & 0x01);       // Enable or disable

    // write some dummy data
    SPI2BUF = 0x0000;                        // Write data to be transmitted
    int i = 0;
    // clear rx buff full flag
    while(!SPI2STATbits.SPIRBF) {
        i++;                        // watchdog timer
        if (i == 1000) return 0;    // timeout, return without sending
    }
   
    // read data to clear rx buff full flag
    i = SPI2BUF;

    return 1;
}

/* Function sends data
 * input: data - 16 bit data
 * returns: 1 - sending succeeded
 *          0 - otherwise
 */
UINT8 spi2Write(UINT16 data) {
    
    SPI2BUF = data;

    int i = 0;
    /* Wait until data is transfered for ISR to RX_BUFF*/
    while(!SPI2STATbits.SPIRBF) {
        i++;                        // watchdog timer
        if (i == 1000) return 0;    // timeout, return without sending
    }
    // read data to clear rx buff full flag
    i = SPI2BUF;

    return 1;
}

/* Function sends and receives data
 * inputs: out - data to be send out
 *         in - pointer to a variable of the receiving data
 * returns: 1 - transfer succeeded
 *          0 - otherwise
 */
UINT8 spi2TransferWord(UINT16 out, UINT16 *in) {

    SPI2BUF = out;

    int i = 0;
    /* Wait until the data is received
        Use watchdog timer to return from deadlock*/
    while (!SPI2STATbits.SPIRBF) {
        i++;                        // watchdog timer
        if (i == 1000) return 0;    // timeout, return without sending
    }

    *in = SPI2BUF;
    
    return 1;
}

/* Function sends data stored in buffer and received data stores in same buffer
 * inputs: buff - pointer to the buffer where the sending data is stored and where
 *                the received data is to be stored
 *         len - buffer length
 * returns: 1 - transfer succeeded
 *          0 - otherwise
 */
UINT8 spi2TransferBuff(UINT16 *buff, UINT16 len) {

    int i,j;
    for(i = 0; i < len; i++) {
        SPI2BUF = buff[i];

        j = 0;
        /* Wait until the data is received
        Use watchdog timer to return from deadlock*/
        while (!SPI2STATbits.SPIRBF) {
            j++;                        // watchdog timer
            if (j == 1000) return 0;    // timeout, return without sending
        }

        buff[i] = SPI2BUF;
    }
    return 1;
}