#include "adp5350.h"

ADP5350::ADP5350() // Uses I2C communication by default
{
  Wire.begin();
}

uint8_t ADP5350::info() {
  return readByte(ADP5350_ADDRESS, MFGID);
}
uint8_t ADP5350::sirev() {
  return readByte(ADP5350_ADDRESS, SIREV);
}

bool ADP5350::setCharger(bool on){
  uint8_t currentSituation = readByte(ADP5350_ADDRESS, CHARGER_FUNCTION_SETTING1);
  if (on) currentSituation = currentSituation | on;
  else currentSituation = currentSituation & ~(on);
  writeByte(ADP5350_ADDRESS, CHARGER_FUNCTION_SETTING1, currentSituation);
  currentSituation = readByte(ADP5350_ADDRESS, CHARGER_FUNCTION_SETTING1);
  //if (DEBUG) Serial.println(currentSituation);
  return true;
  
}

uint8_t ADP5350::getSOC(){
  uint8_t currentSituation = readByte(ADP5350_ADDRESS, BAT_SOC);
  
}

uint8_t ADP5350::enableFuelGauge(bool on){
  uint8_t currentSituation = readByte(ADP5350_ADDRESS, FUEL_GAUGE_MODE);
  uint8_t fuel_command;
  if (on) fuel_command = currentSituation | on;
  else fuel_command = currentSituation & ~(on);
  writeByte(ADP5350_ADDRESS, FUEL_GAUGE_MODE, fuel_command);
  //if (DEBUG) Serial.println(fuel_command);
  return fuel_command;
}


bool ADP5350::resetSOC(){
  uint8_t reset_command = 128;
  writeByte(ADP5350_ADDRESS, SOC_RESET, reset_command);
  //if (DEBUG) Serial.println(reset_command);
  return true;
}

//endables or disables LDOs adjusts one with affecting others
bool ADP5350::enableLDO(uint8_t ldoNumber, bool on) {
  if (ldoNumber < 1 || ldoNumber > 3) return false;
  uint8_t currentSituation;
  currentSituation = readByte(ADP5350_ADDRESS, LDO_CTRL);
  //if (DEBUG) Serial.print("Current: "); Serial.println(currentSituation);
  uint8_t command = 1 << (ldoNumber - 1);
  if (on) command = currentSituation | command;
  else command = currentSituation & ~(command);
  writeByte(ADP5350_ADDRESS, LDO_CTRL, command);
  currentSituation = readByte(ADP5350_ADDRESS, LDO_CTRL);
  //if (DEBUG) Serial.print("Set to: "); Serial.println(currentSituation);
  return true;
}

/////////////////////////////////////////// 
//                                       //
// Possible Voltage values for LDOs      //
//                                       //
//  0000 = 4.20 V.                       //                  
//  0001 = 3.60 V.                       //
//  0010 = 3.30 V.                       //
//  0011 = 3.15 V.                       //
//  0100 = 3.00 V.                       //
//  0101 = 2.85 V.                       //
//  0110 = 2.50 V.                       //
//  0111 = 2.30 V.                       //
//  1000 = 2.10 V.                       //
//  1001 = 1.80 V.                       //
//  1010 = 1.50 V.                       //
//  1011 = 1.40 V.                       //
//  1100 = 1.30 V.                       //
//  1101 = 1.20 V.                       //
//  1110 = 1.10 V.                       //
//  1111 = 1.00 V.                       //
//                                       //
///////////////////////////////////////////

bool ADP5350::voltage_LDO(uint8_t ldoNumber, uint8_t voltage){
  if (voltage > 15) return false; // can't be more than 4 bits
  uint8_t currentSituation, command;
  switch (ldoNumber)
  {
    case 1:
      {
        currentSituation = (readByte(ADP5350_ADDRESS, VID_LDO12) & 0xF0); // mask to keep LDO 2 unchanged
        command = currentSituation | voltage;
        writeByte(ADP5350_ADDRESS, VID_LDO12, command);
      }
      break;
      
    case 2:
      {
        currentSituation = (readByte(ADP5350_ADDRESS, VID_LDO12) & 0x0F); // mask to keep LDO 1 unchanged
        command = currentSituation | (voltage << 4);
        writeByte(ADP5350_ADDRESS, VID_LDO12, command);
      }
      break;
      
    case 3:
      writeByte(ADP5350_ADDRESS, VID_LDO3, voltage); // no masking require
      break;
      
    default:
      return false;
  }
  return true;
}

//returns battery voltage in millivolts
uint16_t ADP5350::batteryVoltage() {
  uint8_t voltageLow = readByte(ADP5350_ADDRESS, VBAT_READ_L);
  uint8_t voltageHigh = readByte(ADP5350_ADDRESS, VBAT_READ_H);
  uint16_t voltageBattery = 32 * voltageHigh + voltageLow / 8;
  return voltageBattery;
}



void ADP5350::writeByte(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data)
{
  Wire.beginTransmission(deviceAddress);
  Wire.write(registerAddress);      // where to write
  Wire.write(data);                 // send data (one byte remember)
  Wire.endTransmission();           // done
  return;
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

