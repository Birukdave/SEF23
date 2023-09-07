  import static javax.swing.JOptionPane.*;
Button confirm;
Buttontype print;
content moneyS, requiredM, Sdestination, destination;
money destmoney;
passenger add;
pluormin plus, minus;
qrcode code;
amount num;
int a=1;
String dest = "";
String tablePath = "C:/Users/Lenovo/Desktop/project/report.csv";
boolean date_exists=false;
String eg="12";

void setup () {
  size (1366, 768);
  confirm = new Button ("Confirm", 840, 650); 
  print =new Buttontype ("Print", 1066, 650);
  moneyS =new content("Per ticket fee:", 930, 532);
  requiredM=new content("Total ticket fee:", 940, 580);
  Sdestination=new content("selected destintion:", 960, 391);
  add=new passenger(840, 410);
  minus=new pluormin(875, 442, 36, 36, #F51E1E, "-");
  plus=new pluormin(1130, 442, 36, 36, #391EF5, "+");
}
void draw () {
  background (255);
  confirm.draw ();
  print.draw ();
  moneyS.draw();
  requiredM.draw();
  Sdestination.draw();
  add.draw();
  plus.draw();
  minus.draw();
  if (destination != null) {
    destination.draw();
  }
  if (destmoney != null) {
    destmoney.draw();

    textAlign(CENTER, CENTER);
    textSize(30);
    text(a, 980, 442);
    text(nfc(a*float(destmoney.fee), 1), 1100, 580);
  }
}
void mouseReleased () {
  if (confirm.hovered()) {
    println ("Confirm Pressed");
  } else if (print.hovered ()) {
    println ("Print Pressed");
    for (int i=1; i<=a; i++) {
      new qrcode(dest);
    }
   new amount(dest,a);
   new month(dest,a); 
  } else if (minus.hovered()) {
    println("minus");
    a--;
    if (a<=1) {
      a=1;
    }
  } else if (plus.hovered()) {
    println("plus");
    a++;
  } else {
    dest = showInputDialog ("your destination", "mkt");
    destination=new content(dest, 1150, 391);
    destmoney=new money(dest, 1050, 535);
  }
}
