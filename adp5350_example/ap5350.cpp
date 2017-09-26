#include "adp350.h"

ADP350::ADP350() // Uses I2C communication by default
{
  Wire.begin();
}


uint8_t ADP350::writeByte(uint8_t deviceAddress, uint8_t registerAddress,uint8_t data)
{
  Wire.beginTransmission(deviceAddress);  
  Wire.write(registerAddress);      // where to write
  Wire.write(data);                 // send data (one byte remember)
  Wire.endTransmission();           // done
  return NULL;
}

uint8_t ADP350::readByte(uint8_t deviceAddress, uint8_t registerAddress)
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
uint8_t ADP350::readBytes(uint8_t deviceAddress, uint8_t registerAddress, uint8_t count, uint8_t * dest)
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


bool ADP350::begin()
{
  return magInit();
}

