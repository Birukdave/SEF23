import org.apache.commons.lang3.RandomStringUtils;
import static javax.swing.JOptionPane.*;
import com.cage.zxing4p3.*;
ZXING4P qrGen;
PImage  QRCode;
PFont font;
int day=day();
int month=month();
int year=year();
String starting_point="srs";

void setup() {
  size(800, 600);

  qrGen = new ZXING4P();
}
void draw() {
  String destination = showInputDialog ("enter your destination pleas");
  qr_generater(starting_point, destination);
}
String qr_generater(String dep, String dst) {
  String code = RandomStringUtils.randomAlphanumeric (7);

  String qrcodes[] = loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");

  String qrcode=dep+"/"+code+"/"+dst;
  qrcodes = append(qrcodes, qrcode);
  saveStrings ("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt", qrcodes);
  println(qrcode);
  QRCode = qrGen.generateQRCode(code, 300, 300);
  imageMode (CENTER);
  image (QRCode, width/2, height/2);
  save("C:\\Users/Lenovo/Desktop/project/every qrcode pictures/image"+code);
  return code;
}
