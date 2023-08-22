import static javax.swing.JOptionPane.*;//
// a commentsdfsadf
String qrcode = showInputDialog ("your QRcode");
String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
String station="qlt";
String starting_point="";
String qrco="";
String qrcocheck="";
boolean starting_area=false;
boolean qrcod=false;
int i=qrcode.indexOf("/");
int k=qrcode.indexOf("/", i+1);
for (int a=0; a<i; a++) {
  starting_point+=qrcode.charAt(a);
}
for (int a=i+1; a>i&&a<k; a++) {
  qrcocheck+=qrcode.charAt(a);
}
  if (starting_point.equals(station)) {
    starting_area=true;
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
println("starting point in the ticket is:", starting_point);
println("the ticket code is:", qrcocheck);
if (qrcod==true&&starting_area==true) {
  print("the door will be opend");
} else {
  print("the door won't be open");
}
