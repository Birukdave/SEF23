import processing.serial.*;
import static javax.swing.JOptionPane.*;

String station_point="srs";
Serial uno;
void setup () {
  uno = new Serial (this, "COM14", 9600);
  uno.bufferUntil ('\n');
}

void draw () {
  String qrcode = showInputDialog ("your QRcode");

  if (qrcode.endsWith("$")) {
    print("it is an entry code");
    qrcode=qrcode.substring(0, qrcode.length()-1);
    String ticketstartpt = getStartingPoint (qrcode);
    if (ticketstartpt.equals(station_point)) {
      uno.write ("open the door on entry\n");
    } else {
      uno.write ("don't open the door on entery\n");
    }
  } else if (qrcode.endsWith("@")) {
    println("it is an exit code");
    qrcode=qrcode.substring(0, qrcode.length()-1);
    String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
    String qr="";
    String dest=getfinishingpt(qrcode);
    if (dest.equals(station_point)||dest.equals("mkt")) {
      uno.write("open the door on exit \n");
    } else {
      uno.write("don't open the door on exit\n");
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
  } else {
    print("don't open the door");
  }
}
String getStartingPoint(String qrcode) {
  String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
  String qrco="";
  String ticketstartpt="";
  boolean qrcod=false;

  for (int a=0; a<qrcodes.length; a++) {
    String qr=qrcodes[a];
    int r=qr.indexOf("/");
    int t=qr.indexOf("/", r+1);
    for (int b=r+1; b>r&&b<t; b++) {
      qrco+=qr.charAt(b);
    }
    if (qrco.equals(qrcode)) {
      qrcod=true;
      for (int b=0; b<r; b++) {
        ticketstartpt+=qr.charAt(b);
      }
    }
    qrco="";
  }
  return ticketstartpt;
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
