
#ifndef _adp5350_H_
#define _adp5350_H_
#include <Wire.h>



#define MFGID 0x00
#define SIREV 0x01

#define CHARGER_TIMER_SETTING 0x06

#define BAT_TEMP 0x20
#define BAT_SOC 0x21
#define VBAT_READ_H 0x22
#define VBAT_READ_L 0x23
#define FUEL_GAUGE_MODE 0x24
#define SOC_RESET 0x25



#define RBAT_30 0x1C

#define LDO_CTRL 0x32
#define LDO_CFG 0x33
#define VID_LDO12 0x34
#define VID_LDO3 0x35


#define ADP5350_ADDRESS 0x44  



class ADP5350
{
  private:

    uint8_t writeByteWire(uint8_t, uint8_t, uint8_t);
    uint8_t readByteWire(uint8_t address, uint8_t subAddress);

    void select();
    void deselect();
public:
    // Public method declarations
    ADP5350();
    bool enableLDO(uint8_t, bool);
    uint8_t writeByte(uint8_t, uint8_t, uint8_t);
    uint8_t readByte(uint8_t, uint8_t);
    uint8_t readBytes(uint8_t, uint8_t, uint8_t, uint8_t *);
    uint16_t batteryVoltage();
    uint8_t info();
    uint8_t sirev();
    bool begin();
};

#endif // _adp5350_H
