import com.cage.zxing4p3.*;
ZXING4P zxing;
String station_point="srs";
void setup() {
  zxing = new ZXING4P ();
}

void draw () {
}
void mouseReleased () {
  if (mouseButton == LEFT) {
    selectInput("Entry QR", "entryGate");
  } else if (mouseButton == RIGHT) {
    selectInput("exit QR", "exitGate");
  }
}
void entryGate (File file) {
  if (file != null) {
    String path = file.getAbsolutePath();
    PImage image = loadImage (path);
    String code = zxing.decodeImage (true, image);
    println (code);
     String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
    String qr="";
    String ticketstartpt = getStartingPoint (code);
    if (ticketstartpt.equals(station_point)) {
      print ("open the door on entry\n");
    } else {
      print ("don't open the door on entry\n");
    }
    for (int a=0; a<qrcodes.length; a++) {
      qr=qrcodes[a];
      String splitted [] = split (qr, "/");
      if (splitted[1].equals(code)) {
        String split [] = split (qrcodes[a], "/");
        String stpt=split[0];
        String qrCode = split[1];
        String destpt=split[2];
        qrcodes [a] = stpt+"/"+qrCode + "@/"+destpt;
      }
    }
    saveStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt", qrcodes);
  }
}
void exitGate (File file) {
  if (file != null) {
    String path = file.getAbsolutePath();
    PImage image = loadImage (path);
    String code = zxing.decodeImage (true, image);
    println (code);
    String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
    String qr="";
    String dest=getfinishingpt(code);
    if (dest.equals(station_point)||dest.equals("mkt")) {
      println("open the door on exit\n");
    } else {
      println("don't open the door on exit\n");
    }
    for (int a=0; a<qrcodes.length; a++) {
      qr=qrcodes[a];
      String splitted [] = split (qr, "/");
      if (splitted[1].equals(code+"@")) {
        String split [] = split (qrcodes[a], "/");
        String stpt=split[0];
        String qrCode = split[1];
        String destpt=split[2];
        qrcodes [a] = stpt+"/"+qrCode + "#/"+destpt;
      }
    }
    saveStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt", qrcodes);
  }
}
String getStartingPoint(String code) {
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
    if (qrco.equals(code)) {
      qrcod=true;
      for (int b=0; b<r; b++) {
        ticketstartpt+=qr.charAt(b);
      }
    }
    qrco="";
  }
  return ticketstartpt;
}
String getfinishingpt(String code) {
  String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
  String qr="";
  String qrco="";
  String dest="";
  boolean qrcod=false;
  code=code+"@";
  for (int a=0; a<qrcodes.length; a++) {
    qr=qrcodes[a];
    int r=qr.indexOf("/");
    int t=qr.indexOf("/", r+1);
    for (int b=r+1; b>r&&b<t; b++) {
      qrco+=qr.charAt(b);
    }
    if (qrco.equals(code)) {
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
