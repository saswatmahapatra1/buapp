#include <dht.h>
dht DHT;

#define DHT11_PIN 7
#include "MQ7.h"
MQ7 mq7(A0, 5.0); // param[1] : Analog pin number, param[2] : Sensor Vcc value
const int AOUTpin=0;
//PrintWriter output;
//const int DOUTpin=8;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
//output = createWriter( "data.txt" );
}

void loop() {
  // put your main code here, to run repeatedly:
int sensorvalue= analogRead(AOUTpin);
//int sensorvalue1= analogRead(DOUTpin);
float ppm = mq7.getPPM();
Serial.println("___________________");
Serial.print("CO Value: ");
Serial.println(sensorvalue);
Serial.print("ppm: ");
Serial.println(ppm);
delay(500);
//Serial.print("Limit: "); 
//Serial.println(sensorvalue1);
delay(500);
int chk = DHT.read11(DHT11_PIN);
Serial.print("Temperature = ");
Serial.println(DHT.temperature);
Serial.print("Humidity = ");
Serial.println(DHT.humidity);
delay(500);
Serial.println("___________________");
//void keyPressed() {
//output.flush(); // Writes the remaining data to the file
//output.close(); // Finishes the file
//exit(); // Stops the program
}
