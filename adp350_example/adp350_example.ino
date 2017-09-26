#include "adp350.h"


// Set up the oled object
const int BIT_DEPTH = 16;
int LOOP_SPEED = 100; //milliseconds
int primary_timer = 0;

ADP350 adp350;



void setup() {
  Serial.begin(115200); //for debugging if needed.
  Wire.begin();
  randomSeed(analogRead(0));  //initialize random numbers
  primary_timer = millis();

}

void loop() {

}
