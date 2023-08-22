import static javax.swing.JOptionPane.*;
String qrcode = showInputDialog ("your QRcode");
String qrcodes[]=loadStrings("c:/users/Lenovo/Desktop/project/everycode/qrcodes.txt");
String qrco="";
String ticketstartpt="";
String starting_point="srs";
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
   for(int b=0;b<r;b++){
   ticketstartpt+=qr.charAt(b);
   }
  }
  qrco="";
}if(ticketstartpt.equals(starting_point)){
print ("the door will be opened");
}else{
print("the door won't be opened");
}
