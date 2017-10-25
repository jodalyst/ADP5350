#include "adp5350.h"


// Set up the oled object
const int BIT_DEPTH = 16;
int LOOP_SPEED = 100; // milliseconds
int primary_timer = 0;

ADP5350 adp;

void setup() {
  
  Serial.begin(115200); // for debugging if needed.
  Wire.begin();
  randomSeed(analogRead(0));  // initialize random numbers
  primary_timer = millis();

  adp.writeByte(ADP5350_ADDRESS,FUEL_GAUGE_MODE, 0x01); // enable Fuel Gauge
  delay(1000); // give Teensy time to print the first text block
}

void loop() {
  bool work;
  Serial.println("READING REGISTERS AND BATTERY VOLTAGE");
  Serial.print("Model ID: "); Serial.println( adp.info()&0xF ); // Model ID
  Serial.print("Manufacturing ID: "); Serial.println( adp.info()>>4 ); // Manufacturing ID
  Serial.print("Silicon Revision: "); Serial.println( adp.sirev() ); // Silicon Revision
  Serial.print("V_BSNS (mV): "); Serial.println( adp.batteryVoltage() ); // Battery Voltage (mV)
  delay(5000);
  Serial.println("\n");

  // Testing LDO enabling
  Serial.println("TESTING LDO FUNCTIONALITY");
  work = adp.enableLDO(1, 0);
  if (work) Serial.println("Shutting LDO 1 off ...");
  delay(5000);
  work = adp.enableLDO(1, 1);
  if (work) Serial.println("Turning LDO 1 on ...");
  delay(5000);

  // Testing LDO Voltage(s)
  work = adp.voltage_LDO(1, 15); // change voltage to 1 V
  if (work) Serial.println("Changing Voltage of LDO 1 to 1.0 V ...");
  delay(5000);
  work = adp.voltage_LDO(1, 2); // change back to 3.3 V
  if (work) Serial.println("Changing Voltage of LDO 1 to 3.3 V ...");
  delay(5000);

  // Testing LD0 enabling
  work = adp.enableLDO(2, 1);
  if (work) Serial.println("Turning LDO 2 on ...");
  delay(5000);
  work = adp.enableLDO(2, 0);
  if (work) Serial.println("Shutting LDO 2 off ...");
  Serial.println("\n");
  delay(5000);
}
