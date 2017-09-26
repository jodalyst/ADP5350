#include "adp350.h"

ADP5350::ADP5350() // Uses I2C communication by default
{
  Wire.begin();
}


//endables or disables LDOs adjusts one with affecting others
bool ADP5350::enableLDO(uint8_t ldoNumber, bool on){
  if (ldoNumber<1 || ldoNumber>3) return false;
  uint8_t currentSituation = readByte(ADP5350_ADDRESS,LDO_CTRL);
  uint8_t command = 1<<(ldoNumber-1);
  if (on) command = currentSituation | command;
  else command = currentSituation & ~(command);
  writeByte(ADP5350,LDO_CTRL,currentSituation);
  return true;
}

//returns battery voltage in millivolts
ADP5350::batteryVoltage(){
  uint8_t voltageLow = readByte(ADP5350_ADDRESS, VBAT_READ_L);
  uint8_t voltageHigh = readByte(ADP5350_ADDRESS, VBAT_REAL_H);
  uint16_t voltageBattery = 32*voltageHigh + voltageLow/8;
  return voltageBattery;
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
  Wire.beginTransmission(deviceAddress);
  Wire.write(registerAddress);
  Wire.endTransmission(false);
  Wire.requestFrom(deviceAddress, (uint8_t) 1);
  data = Wire.read();
  return data;
}

//Read Bytes (arbitrary length)
uint8_t ADP5350::readBytes(uint8_t deviceAddress, uint8_t registerAddress, uint8_t count, uint8_t * dest)
{
  Wire.beginTransmission(deviceAddress);
  Wire.write(registerAddress);
  Wire.endTransmission(false);
  uint8_t i = 0;
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

