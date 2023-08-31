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
  background (255);
  textAlign(CENTER, CENTER);
  textSize(30);
  fill(0);
  text("ethiopian land train corporation addis ababa's", width/2, 40);
  text("simple train transite survice", width/2, 70);
  textSize(30);
  textAlign(LEFT, CENTER);
  fill(#6A052C);
  text(day+"/"+month+"/"+year, 600, height/2);
  textSize(30);
  textAlign(LEFT, CENTER);
  fill(#3F115F);
  text("amount of birr", 5, height/2);
}
void draw() {
  String destination = showInputDialog ("enter your destination pleas");
  qr_generater(starting_point, destination);
}
String qr_generater(String dep, String dst) {
  String code = RandomStringUtils.randomAlphanumeric (7);

  String tablePath = "c:/users/Lenovo/Desktop/project/every station code and destination.csv";

  Table table = loadTable (tablePath, "header");

  TableRow newRow = table.addRow ();
  newRow.setString ("starting point", dep);
  newRow.setString ("code", code);
  newRow.setString ("destination point", dst);
  saveTable (table, tablePath);
  QRCode = qrGen.generateQRCode(code, 300, 300);
  imageMode (CENTER);
  image (QRCode, width/2, height/2);
  save("C:\\Users/Lenovo/Desktop/project/every qrcode pictures/image"+code);
  return code;
}
