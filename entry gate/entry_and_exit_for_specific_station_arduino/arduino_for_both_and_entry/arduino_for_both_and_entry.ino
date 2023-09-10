
#include <Servo.h>
Servo servo;
Servo servo2;
String data;
void setup() {
  Serial.begin (9600);
  servo.attach(6);
  servo2.attach(5);
  servo.writeMicroseconds(0);
  servo2.writeMicroseconds(0);
  for (int a = 9; a <= 12; a++) {
    pinMode(a, OUTPUT);
  }
}

void loop() {
}

void serialEvent () {
  data = Serial.readStringUntil ('\n');

  if (data.equals ("open the door on entry")) {
    servo.writeMicroseconds(1000);
    digitalWrite(9, 1);
    delay(1300);
    digitalWrite(9, 0);
    servo.writeMicroseconds(0);
  } else if (data.equals ("don't open the door on entry")) {
    servo.writeMicroseconds(0);
    digitalWrite(10, 1);
    delay(1300);
    digitalWrite(10, 0);
  }
  else if (data.equals ("open the door on exit")) {
    servo2.writeMicroseconds(1000);
    digitalWrite(11, 1);
    delay(1300);
    digitalWrite(11, 0);
    servo2.writeMicroseconds(0);
  }
  else if (data.equals ("don't open the door on exit")) {
    servo2.writeMicroseconds(0);
    digitalWrite(12, 1);
    delay(1300);
    digitalWrite(12, 0);
  }
}
