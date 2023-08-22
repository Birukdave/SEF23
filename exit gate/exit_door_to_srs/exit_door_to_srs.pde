import static javax.swing.JOptionPane.*;

String qrcode = showInputDialog ("your QRcode");
String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
String qrcocheck="";
String qrco="";
String dest="";
String station="srs";
String qr="";
boolean qrcod=false;
boolean destinationarea=false;
int i=qrcode.indexOf("/");
int k=qrcode.indexOf("/", i+1);
for (int a=i+1; a>i&&a<k; a++) {
  qrcocheck+=qrcode.charAt(a);
}
for (int a=0; a<qrcodes.length; a++) {
 qr=qrcodes[a];
  int r=qr.indexOf("/");
  int t=qr.indexOf("/", r+1);
  for (int b=r+1; b>r&&b<t; b++) {
    qrco+=qr.charAt(b);
  }
  if (qrco.equals(qrcocheck)) {
    qrcod=true;
  }
  qrco="";
}
for (int a=k+1; a<qrcode.length(); a++) {
  dest+=qrcode.charAt(a);
}  
if (dest.equals(station)) {
  destinationarea=true;
}
if (dest.equals(station)||dest.equals("mkt")) {
  destinationarea=true;
}
if(qrcod=true&&destinationarea==true){
print("the door will be opened");
}else{
print("the door won't be opened");
}
