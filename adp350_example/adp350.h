
#ifndef _adp350_H_
#define _adp350_H_
#include <Wire.h>



#define ADO 0
#if ADO
#define ADP350_ADDRESS 0x69  
#else
#define ADP350_ADDRESS 0x68  
#endif // AD0


class MPU9250
{
  private:

    uint8_t writeByteWire(uint8_t, uint8_t, uint8_t);
    uint8_t readByteWire(uint8_t address, uint8_t subAddress);

    void select();
    void deselect();
public:
    // Public method declarations
    ADP350();
    uint8_t writeByte(uint8_t, uint8_t, uint8_t);
    uint8_t readByte(uint8_t, uint8_t);
    uint8_t readBytes(uint8_t, uint8_t, uint8_t, uint8_t *);
    bool begin();
};

#endif // _adp350_H
