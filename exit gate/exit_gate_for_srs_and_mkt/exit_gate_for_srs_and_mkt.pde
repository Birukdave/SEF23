import static javax.swing.JOptionPane.*;
String station="srs";
void setup() {
}
void draw() {
  String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
  String qr="";
  String qrcode = showInputDialog ("your QRcode");
  String dest=getfinishingpt(qrcode);
  if (dest.equals(station)||dest.equals("mkt")) {
    println("the door will be opened");
  } else {
    println("the door won't be opened");
  }
  for (int a=0; a<qrcodes.length; a++) {
    qr=qrcodes[a];
    String splitted [] = split (qr, "/");
    if (splitted[1].equals(qrcode)) {
      String split [] = split (qrcodes[a], "/");
      String stpt=split[0];
      String qrCode = split[1];
      String destpt=split[2];
      qrcodes [a] = stpt+"/"+qrCode + "#/"+destpt;
    }
  }
  saveStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt", qrcodes);
}
String getfinishingpt(String qrcode) {
  String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
  String qr="";
  String qrco="";
  String dest="";
  boolean qrcod=false;
  for (int a=0; a<qrcodes.length; a++) {
    qr=qrcodes[a];
    int r=qr.indexOf("/");
    int t=qr.indexOf("/", r+1);
    for (int b=r+1; b>r&&b<t; b++) {
      qrco+=qr.charAt(b);
    }
    if (qrco.equals(qrcode)) {
      qrcod=true;
      if (qrcod==true) {
        for (int b=t+1; b<qr.length(); b++) {
          dest+=qr.charAt(b);
        }
      }
    }
    qrco="";
  }
  return dest;
}
