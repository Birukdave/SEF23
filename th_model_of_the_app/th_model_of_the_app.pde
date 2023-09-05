Button buttons [], print, discard;
String labels [] = {"coca cola", "st.lideta", "tegbared", "mexico", "leghar", "stadium", "st.estifanos", "Bambis", "St.urael", "Hayahulet 2", "Hayahulet 1", "Lem hotel", "Megenagna", "Gurd shola 2", "Gurd shola 1", "Manegment institute", "Civil service college", "St.michael", "C.M.C", "Meri", "Ayat"};
String lables1[]={"Ayat", "Bambis", "C.M.C", "Civil service college", "Coca cola", "Gurd shola 1", "Gurd shola 2", "Hayahulet 1", "Hayahulet 2", "Legehar", "Lem hotel", "Manegment institute", "Megenagna", "Meri", "mexico", "St.estifanose", "St.ledeta", "St.michael", "St.urael", "Stadium", "tegbared"};
sort alpha;
sdesti desti;
Label content[];    
String ContentC[]={"Destination", "Departure", "Tickets", "Tariff"};
recta des;
boolean sor=false;
void setup() {
  size(1366, 768);
  content = new Label[0];
  for (int b = 0; b < ContentC.length; b ++) {
    Label con = new Label ( ContentC [b]);
    content =  (Label [])append (content, con);
  }
  for (int b=0; b<=3; b++) {
    des=new recta(910, 96+97*b);
  }
  alpha=new sort("A", "Z", 846, 108);
  desti=new sdesti("D", 807, 108);
  print=new Button(1, "Print" );
  discard=new Button(2, "Discard");
  buttons = new Button [0];
  for (int b = 0; b < labels.length; b ++) {
    Button button = new Button (0, labels [b]);
    buttons =  (Button [])append (buttons, button);
  }
}
void draw() {
  background(255);
  fill(#4CAF50);
  rect(911, 0, 455.3, 768);
  des.draw();
  for (int b = 0; b < content.length; b ++) {
    content [b].draw (947, 134+96*b);
  }
  desti.draw();
  alpha.draw();
  print.draw(1143, 679);
  discard.draw(948, 679);
  for (int b = 0; b < buttons.length; b ++) {
    if (b<=2) {
      buttons [b].draw (280+ 193*b + 14*b, 148);
    }  
    if (b<=5&&b>=3) {
      buttons [b].draw (280 + 193*(b-3) + 14*(b-3), 206);
    }  
    if (b<=8&&b>=6) {
      buttons [b].draw (280 + 193*(b-6 )+ 14*(b-6), 264);
    }
    if (b<=11&&b>=9) {
      buttons [b].draw (280 + 193*(b-9)+ 14*(b-9), 322);
    }
    if (b<=14&&b>=12) {
      buttons [b].draw (280 + 193*(b-12 )+ 14*(b-12), 381);
    }
    if (b<=17&&b>=15) {
      buttons [b].draw (280 + 193*(b-15 )+ 14*(b-15), 440);
    }
    if (b<=20&&b>=18) {
      buttons [b].draw (280 + 193*(b-18 )+ 14*(b-18), 499);
    }
  }
}
void mouseReleased () {
  for (int b = 0; b < buttons.length; b ++) {
    if (buttons [b].hovered()) {
      println(buttons[b].label);
    }
  }
  if (discard.hovered()) {
    println("Discard");
  } else if (print.hovered()) {
    println("Print");
  } else if (alpha.hovered()) {
    buttons = new Button [0];
    for (int b = 0; b <  lables1.length; b ++) {
      Button button = new Button (0, lables1 [b]);
      buttons =  (Button [])append (buttons, button);
    }
  } else if (desti.hovered()) {
    buttons = new Button [0];
    for (int b = 0; b < labels.length; b ++) {
      Button button = new Button (0, labels [b]);
      buttons =  (Button [])append (buttons, button);
    }
  }
}
