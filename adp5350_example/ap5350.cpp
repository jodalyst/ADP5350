#include "adp350.h"

ADP5350::ADP5350() // Uses I2C communication by default
{
  Wire.begin();
}


ADP5350::enableLDO(uint8_t ldoNumber, bool on){
  uint8_t currentSituation = readByte(ADP5350_ADDRESS,LDO_CTRL);

  switch(ldoNumber){
    case 1: currentSituation = on?currentSituation & ~(0):currentSituation & ~(1);
    case 2: currentSituation = on?currentSituation & ~(0):currentSituation & ~(1);
    case 3: currentSituation = on?currentSituation & ~(0):currentSituation & ~(1);
    case default: 
  }
  if (ldoNumber==1){
    Wire.write()
  }

}

//returns battery voltage in millivolts
ADP5350::batteryVoltage(){
  uint8_t voltageLow = readByte(ADP5350_ADDRESS, VBAT_READ_L);
  uint8_t voltageHigh = readByte(ADP5350_ADDRESS, VBAT_REAL_H);
  uint16_t voltageBattery = 32*voltageHigh + voltageLow/8;
  return voltageBattery;
}

ADP5350::batteryCurrent(){
  uint16_t bV = batteryVoltage();
  u

}

uint8_t ADP5350::writeByte(uint8_t deviceAddress, uint8_t registerAddress,uint8_t data)
{
  Wire.beginTransmission(deviceAddress);  
  Wire.write(registerAddress);      // where to write
  Wire.write(data);                 // send data (one byte remember)
  Wire.endTransmission();           // done
  return NULL;
}

uint8_t ADP5350::readByte(uint8_t deviceAddress, uint8_t registerAddress)
{
  uint8_t data; 

  // Init
  Wire.beginTransmission(deviceAddress);
  //Point the device to its register that we want to read eventually
  Wire.write(registerAddress);
  // halt
  Wire.endTransmission(false);
  // Read one byte from slave register address
  Wire.requestFrom(deviceAddress, (uint8_t) 1);
  // Fill Rx buffer with result
  data = Wire.read();
  // Return data read from slave register
  return data;
}

//Read Bytes (arbitrary length)
uint8_t ADP5350::readBytes(uint8_t deviceAddress, uint8_t registerAddress, uint8_t count, uint8_t * dest)
{
  // Init:
  Wire.beginTransmission(deviceAddress);
  //Point the device to its register that we want to read eventually
  Wire.write(registerAddress);
  // halt write, 
  Wire.endTransmission(false);

  uint8_t i = 0;
  // ask values
  Wire.requestFrom(deviceAddress, count);
  while (Wire.available())
  {
    dest[i++] = Wire.read();
  }
  return i; // Return number of bytes written
}


bool ADP5350::begin()
{
}

