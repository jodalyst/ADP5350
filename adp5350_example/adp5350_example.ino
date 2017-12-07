#include "adp5350.h"


// Set up the oled object
const int BIT_DEPTH = 16;
int LOOP_SPEED = 100; // milliseconds
int primary_timer = 0;

ADP5350 adp;

void setup() {
  
  Serial.begin(115200); // for debugging if needed.
  Wire.begin();
  delay(1000);
  randomSeed(analogRead(0));  // initialize random numbers
  primary_timer = millis();

  //adp.writeByte(ADP5350_ADDRESS,FUEL_GAUGE_MODE, 0x01); // enable Fuel Gauge
  //adp.writeByte(ADP5350_ADDRESS, LDO_CFG, 0x04);
  Serial.print("Charger Setting:");
  adp.setCharger(1);
  Serial.print("Fuel Gauge: ");
  adp.enableFuelGauge(1);
  adp.enableLDO(1, 1);
  Serial.print("SOC reset: ");
  adp.resetSOC();
  delay(1000); // give Teensy time to print the first text block
}

void loop() {
  bool work;
  Serial.println("READING REGISTERS AND  BATTERY VOLTAGE");
  Serial.print("Model ID: "); Serial.println( adp.info()&0xF ); // Model ID
  Serial.print("Manufacturing ID: "); Serial.println( adp.info()>>4 ); // Manufacturing ID
  Serial.print("Silicon Revision: "); Serial.println( adp.sirev() ); // Silicon Revision
  Serial.print("V_BSNS (mV): "); Serial.println( adp.batteryVoltage() ); // Battery Voltage (mV)
  delay(5000);
  Serial.println("\n");
  Serial.print("SOC: "); Serial.println(adp.getSOC());
  work = adp.voltage_LDO(1, 3); // change voltage to 1 V
  if (work) Serial.println("Changing Voltage of LDO 1 to 3.15 V ...");
  delay(2500);
  work = adp.voltage_LDO(1, 2); // change voltage to 1 V
  if (work) Serial.println("Changing Voltage of LDO 1 to 3.3 V ...");
  delay(500);
  work = adp.enableLDO(3, 1);
  if (work) Serial.println("Turning LDO 3 on ...");
  delay(3500);
  work = adp.enableLDO(2, 1);
  if (work) Serial.println("Turning LDO 2 on ...");
  delay(3500);
  work = adp.enableLDO(3, 0);
  if (work) Serial.println("Turning LDO 3 off ...");
  work = adp.enableLDO(2, 0);
  if (work) Serial.println("Turning LDO 2 off ...");
  delay(3500);
  adp.writeByte(ADP5350_ADDRESS,LDO_CTRL,255);
  Serial.print("Fuel Gauge Setting: "); Serial.println(adp.readByte(ADP5350_ADDRESS,FUEL_GAUGE_MODE));
  adp.resetSOC();
  delay(1000);
  Serial.print("LDO REG: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x34));
  Serial.print("LDO 2 REG: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x35));
  Serial.print("PGOOD STAT: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x36));
  Serial.print("PGOOD MASK: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x37));
  Serial.print("cH STAT1: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x08));
  Serial.print("ch STAT2: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x09));
  Serial.print("CHG FAULT: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x0A));
  Serial.print("BATT SHORT: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x0B));
  Serial.print("CHG Term: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x03));
  Serial.print("ILIM: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x02));
  Serial.print("ID: "); Serial.println(adp.readByte(ADP5350_ADDRESS,0x01));
  Serial.print("LDO Config: "); Serial.println(adp.readByte(ADP5350_ADDRESS, LDO_CFG));
  Serial.print("LDO STATUS: "); Serial.println(adp.readByte(ADP5350_ADDRESS,LDO_CTRL));
  adp.writeByte(ADP5350_ADDRESS,0x32,1);
  delay(3000);
  /*
  // Testing LDO enabling
  Serial.println("TESTING LDO FUNCTIONALITY");
  work = adp.enableLDO(3, 1);
  if (work) Serial.println("Shutting LDO 3 on ...");
  delay(500);
  work = adp.enableLDO(3, 0);
  if (work) Serial.println("Turning LDO 3 off ...");
  delay(500);
  work = adp.enableLDO(3, 1);
  if (work) Serial.println("Shutting LDO 3 on ...");
  delay(500);
  // Testing LDO Voltage(s)
  work = adp.voltage_LDO(3, 15); // change voltage to 1 V
  if (work) Serial.println("Changing Voltage of LDO 3 to 1.0 V ...");
  delay(500);
  work = adp.voltage_LDO(3, 2); // change back to 3.3 V
  if (work) Serial.println("Changing Voltage of LDO 3 to 3.3 V ...");
  delay(5000);
  work = adp.enableLDO(3, 0);
  if (work) Serial.println("Turning LDO 3 off ...");
  delay(500);

  // Testing LD0 enabling
  work = adp.enableLDO(2, 1);
  if (work) Serial.println("Turning LDO 2 on ...");
  delay(5000);
  work = adp.enableLDO(2, 0);
  if (work) Serial.println("Shutting LDO 2 off ...");
  Serial.println("\n");
  delay(500);
  */
}
