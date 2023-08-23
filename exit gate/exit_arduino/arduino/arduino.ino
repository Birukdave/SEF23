#include <Servo.h>
Servo servo;
int servoPin = 6;
String data;
void setup() {
  Serial.begin (9600);
  servo.attach(servoPin);
  servo.writeMicroseconds(0);
}

void loop() {
}

void serialEvent () {
  data = Serial.readStringUntil ('\n');

  if (data.equals ("open the door")) {
    servo.writeMicroseconds(1000);
    delay(1300);
     servo.writeMicroseconds(0);
  } else {
    servo.writeMicroseconds(0);
    delay(1300);
  }
}
