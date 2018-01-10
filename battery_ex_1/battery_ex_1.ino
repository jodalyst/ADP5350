#include "adp5350.h"
#include <WiFi.h>

//tests posting of data to a server for battery voltage tracking over time

const char* ssid     = "";
const char* password = "";

const char* host = "iesc-s3.mit.edu";



//declare instance of ADP5350 class
ADP5350 adp;

void setup() {
  Serial.begin(115200); // for debugging if needed.
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
  }
  
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  
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
  delay(1000); // give MCU time to print the first text block
}

void loop() {
      // Use WiFiClient class to create TCP connections
    int voltage = adp.batteryVoltage(); // Battery Voltage (mV)
    WiFiClient client;
    if (!client.connect(host, 80)) {
        Serial.println("connection failed");
    }else{
      String data = "{\"id\": 79,\"voltage\":"+String(voltage)+"}";
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
      while (client.available() == 0) {
          if (millis() - timeout > 5000) {
              Serial.println(">>> Client Timeout !");
              client.stop();
              break;
          }
      } 
      // Read all the lines of the reply from server and print them to Serial
      while(client.available()) {
          String line = client.readStringUntil('\r');
          Serial.print(line);
      }
  
      Serial.println();
      Serial.println("closing connection");
      }
      
  delay(10000);

}
