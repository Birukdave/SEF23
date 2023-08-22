import static javax.swing.JOptionPane.*;

String qrcode = showInputDialog ("your QRcode");
String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
String qrcocheck="";
String qrco="";
String dest="";
String station="mkt";
boolean qrcod=false;
boolean destinationarea=false;
int i=qrcode.indexOf("/");
int k=qrcode.indexOf("/", i+1);
for (int a=i+1; a>i&&a<k; a++) {
  qrcocheck+=qrcode.charAt(a);
}
for (int a=0; a<qrcodes.length; a++) {
  String qr=qrcodes[a];
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
if(qrcod=true&&destinationarea==true){
print("the will be opened");
}else{
print("the door won't be opened");
}
