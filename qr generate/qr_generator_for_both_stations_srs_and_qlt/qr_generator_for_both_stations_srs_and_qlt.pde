import org.apache.commons.lang3.RandomStringUtils;
import static javax.swing.JOptionPane.*;

String starting_point="srs";

void setup() {
}
void draw(){
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

  return code;
}
