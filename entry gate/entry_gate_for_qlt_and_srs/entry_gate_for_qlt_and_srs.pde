import static javax.swing.JOptionPane.*;

String station_point="qlt";

void setup () {
}

void draw () {
  String qrcode = showInputDialog ("your QRcode");
  String ticketstartpt = getStartingPoint (qrcode);
  if (ticketstartpt.equals(station_point)) {
    print ("the door will be opened");
  } else {
    print("the door won't be opened");
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
