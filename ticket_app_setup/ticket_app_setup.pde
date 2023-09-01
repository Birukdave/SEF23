import static javax.swing.JOptionPane.*;
Button confirm;
Buttontype print;
content moneyS, requiredM,Sdestination,destination;
money destmoney;
passenger add;
pluormin plus,minus;
int a=1;
void setup () {
  size (1366, 768);
   String dest = showInputDialog ("your destination");
  confirm = new Button ("Confirm", 840, 650); 
  print =new Buttontype ("Print", 1066, 650);
  moneyS =new content("Money for single ticket:", 840, 532);
  requiredM=new content("Required money:", 840, 580);
  Sdestination=new content("selected destintion:",840,391);
  destination=new content(dest,1100,391);
  destmoney=new money(dest,1150,535);
  add=new passenger(840,410);
  minus=new pluormin(875,442,36,36,#F51E1E,"-");
  plus=new pluormin(1130,442,36,36,#391EF5,"+");
}
void draw () {
  background (255);
  confirm.draw ();
  print.draw ();
  moneyS.draw();
  requiredM.draw();
  Sdestination.draw();
  destination.draw();
  destmoney.draw();
  add.draw();
  plus.draw();
  minus.draw();
  
 textAlign(LEFT,CENTER);
  textSize(30);
  text(a,980,442);
    text(a*float(destmoney.fee),1050,560);;}
  void mouseReleased () {
 
 if (confirm.hovered()) {
    println ("Confirm Pressed");
  } else if (print.hovered ()) {
    println ("Print Pressed");
  }else if(minus.hovered()){
  println("minus");
  a--;
  textSize(30);
  fill(0);
  textAlign(LEFT,TOP);
  if(a<=0){
  a=0;
  }
  }else if(plus.hovered()){
  println("plus");
  textSize(30);
  fill(0);
    textAlign(LEFT,TOP);
  a++;
  }
  }
