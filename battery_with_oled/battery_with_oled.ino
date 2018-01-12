#include <WiFi.h>
#include "adp5350.h"
#include <U8g2lib.h>

//tests posting of data to a server for battery voltage tracking over time


U8G2_SH1106_128X64_NONAME_F_4W_HW_SPI oled(U8G2_R0, 5, 17, 16);

const char* ssid     = "J2";
const char* password = "18611865";

const char* host = "iesc-s3.mit.edu";

#define ID 3017


//declare instance of ADP5350 class
ADP5350 adp;

void setup() {
  delay(2000);
  Serial.begin(115200); // for debugging if needed.
  adp.enableLDO(1, 1);
  adp.enableLDO(2, 1);

  WiFi.begin(ssid, password);
  oled.begin();     // initialize the OLED
  oled.clearBuffer();    //clear the screen contents
  oled.setFont(u8g2_font_ncenB10_tr);    
  oled.setCursor(0,15);
  oled.print("Starting");
  oled.sendBuffer();
  while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
  }
  
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  oled_print(String(WiFi.localIP()));
  
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
  pinMode(15,OUTPUT);
  digitalWrite(15,LOW);
  delay(1000); // give MCU time to print the first text block
  //adp.enableLDO(2, 0);

}

void loop() {
      // Use WiFiClient class to create TCP connections
    int voltage = adp.batteryVoltage(); // Battery Voltage (mV)
    WiFiClient client;
    if (!client.connect(host, 80)) {
        Serial.println("connection failed");
        oled_print("connfail");
    }else{
        oled_print("in");
      String data = "{\"id\": "+String(ID)+",\"voltage\":"+String(voltage)+"}";
      Serial.println("Sending");
      client.println("POST /esp32test/reportBattery HTTP/1.1");
      Serial.println("POST /esp32test/reportBattery HTTP/1.1");
      client.println("Host: iesc-s3.mit.edu");
      Serial.println("Host: iesc-s3.mit.edu");
      client.println("Content-Type: application/json");
      Serial.println("Content-Type: application/json");
      client.println("Cache-Control: no-cache");
      Serial.println("Cache-Control: no-cache");
      client.println("Content-Length: "+String(data.length()));
      Serial.println("Content-Length: "+String(data.length()));
      client.println();
      Serial.println();
      client.println(data);
      Serial.println(data);
      client.print("\r\n\r\n");
      Serial.print("\r\n\r\n");
      unsigned long timeout = millis();
      oled_print("done post");
      while (client.available() == 0) {
          if (millis() - timeout > 5000) {
              Serial.println(">>> Client Timeout !");
              client.stop();
              break;
          }
      } 
      oled_print("got response");
      // Read all the lines of the reply from server and print them to Serial
      while(client.available()) {
          String line = client.readStringUntil('\r');
          Serial.print(line);
      }
  
      Serial.println();
      Serial.println("closing connection");
      oled_print("got it");
      }
  digitalWrite(15,1);
  delay(10000);
  digitalWrite(15,0);

}


void oled_print(String input){
  oled.clearBuffer();
  oled.setCursor(0,15);
  oled.print(input);
  oled.sendBuffer();     // update the screen

}

