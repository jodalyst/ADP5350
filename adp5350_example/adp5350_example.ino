#include "adp5350.h"


//declare instance of ADP5350 class
ADP5350 adp;

void setup() {
  Serial.begin(115200); // for debugging if needed.
  Wire.begin(); //
  delay(1000);
  Serial.println("READING REGISTERS AND  BATTERY VOLTAGE");
  Serial.print("Model ID: "); Serial.println( adp.info()&0xF ); // Model ID
  Serial.print("Manufacturing ID: "); Serial.println( adp.info()>>4 ); // Manufacturing ID
  Serial.print("Silicon Revision: "); Serial.println( adp.sirev() ); // Silicon Revision
  Serial.print("Charger Setting:"); 
  adp.setCharger(1);
  Serial.print("Fuel Gauge: ");
  adp.enableFuelGauge(1);
  adp.enableLDO(1, 1);
  //adp.voltage_LDO(1,8);
  Serial.print("SOC reset: ");
  adp.resetSOC();
  delay(1000); // give Teensy time to print the first text block
}

void loop() {
  bool work;
  for(int i = 0; i<13; i++){
    Serial.print("Voltage: "); Serial.println(i);
    //adp.voltage_LDO(1,i);
    delay(400);
  }
  Serial.println("READING REGISTERS AND  BATTERY VOLTAGE");
  Serial.print("Model ID: "); Serial.println( adp.info()&0xF ); // Model ID
  Serial.print("Manufacturing ID: "); Serial.println( adp.info()>>4 ); // Manufacturing ID
  Serial.print("Silicon Revision: "); Serial.println( adp.sirev() ); // Silicon Revision
  Serial.print("V_BSNS (mV): "); Serial.println( adp.batteryVoltage() ); // Battery Voltage (mV)
  Serial.println("\n");
  Serial.print("SOC: "); Serial.println(adp.getSOC());
  work = adp.enableLDO(3, 1);
  if (work) Serial.println("Turning LDO 3 on ...");
  delay(3500);
  work = adp.enableLDO(2, 1);
  if (work) Serial.println("Turning LDO 2 on ...");
  delay(3500);
  adp.voltage_LDO(2,8);
  delay(3500);
  work = adp.enableLDO(3, 0);
  if (work) Serial.println("Turning LDO 3 off ...");
  work = adp.enableLDO(2, 0);
  if (work) Serial.println("Turning LDO 2 off ...");
  delay(3500);
   adp.voltage_LDO(2,2);
  adp.writeByte(ADP5350_ADDRESS,LDO_CTRL,255);
  Serial.print("Fuel Gauge Setting: "); Serial.println(adp.readByte(ADP5350_ADDRESS,FUEL_GAUGE_MODE));
  adp.resetSOC();
  delay(1000);
  Serial.print("cH STAT1: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x08));
  Serial.print("ch STAT2: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x09));
  Serial.print("CHG FAULT: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x0A));
  Serial.print("BATT SHORT: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x0B));
  Serial.print("CHG Term: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x03));
  Serial.print("ILIM: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x02));
  delay(3000);

}
