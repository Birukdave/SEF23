import static javax.swing.JOptionPane.*;

String qrcode = showInputDialog ("your QRcode");
String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
String qr="";
String qrco="";
String dest="";
String station="mkt";
boolean qrcod=false;
boolean rechecker=true;
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
  if(qr.endsWith("#")){
  rechecker=false;
  }
}
if (dest.equals(station)&&rechecker==true) {
  println("the door will be opened");
} else {
  print("the door won't be opened");
}
for (int a=0;a<qrcodes.length;a++ ) {
  qr=qrcodes[a];
  int r=qr.indexOf("/");
  int t=qr.indexOf("/", r+1);
  for (int b=r+1; b>r&&b<t; b++) {
    qrco+=qr.charAt(b);
  }
if (qrco.equals(qrcode)){
  qrcodes [a] = qrcodes [a] + "#";
}
}
saveStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt", qrcodes);
