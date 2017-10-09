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

}

void loop() {
  Serial.print("Model ID: "); Serial.println( adp.info()&0xF ); // Model ID
  Serial.print("Manufacturing ID: "); Serial.println( adp.info()>>4 ); // Manufacturing ID
  Serial.print("Silicon Revision: "); Serial.println( adp.sirev() ); // Silicon Revision
  Serial.print("V_BSNS: "); Serial.println( adp.batteryVoltage() ); // Battery Voltage (mV)
  Serial.println("\n");
  delay(5000);
}
