Fonts fonts;
Button buttons [], print, discard;
popu populas[];
int sum=0;
String labels [] = {"Abo Junction", "Adey Abeba", "Nifas Silk 1", "Nifas Silk 2", "Lancha", "Temenja Yazh", "Riche", "Meshwalekya", "Stadium", "Leghar", "Mexico", "Tegbared", "St. Lideta", "Darmar", "Abnet", "Sebategna", "Autobus Tera", "Gojam Berenda", "Atikilt Tera", "Menilik Square" };
String lables1[]={"Abnet", "Abo Junction", "Adey Abeba", "Atikilt Tera", "Autobus Tera", "Darmar", "Gojam Berenda", "Lancha", "Leghar", "Menilik Square", "Meshwalekya", "Mexico", "Nifas Silk 1", "Nifas Silk 2", "Riche", "Sebategna", "St. Lideta", "Stadium", "Tegbared", "Temenja Yazh"};
String destinations[]={"Menilik Square", "Atikilt Tera", "Gojam Berenda", "Autobus Tera", "Sebategna", "Abnet", "Darmar", "St. Lideta", "Tegbared", "Mexico", "Leghar", "Stadium", "Meshwalekya", "Riche", "Temenja Yazh", "Lancha", "Nifas Silk 2", "Nifas Silk 1", "Adey Abeba", "Saris", "Abo Junction"};
sort alpha;
sdesti desti;  
Labels departure, destination, tariff;
sign ticket;
shaper plus, minus;
money subtotal, servcharge, total;
qrcode code;
title tit;
int a=1;
FloatDict stationsFees = new FloatDict ();
String tablePath = "C:/Users/Lenovo/Desktop/project/new_stations_and_fee.csv";

String dest="";

void setup() {
  size(1366, 768);
  IntDict popular= new IntDict ();
  for (int d=0; d<destinations.length; d++) {
    String tablePath = "C:/Users/Lenovo/Desktop/project/dest/"+destinations[d]+"/"+month()+".csv";
    File file = new File (tablePath);
    if (file.exists()) {
      Table table = loadTable(tablePath, "header");
      int tickets [] = table.getIntColumn(day()+"-Ticket ordered");
      for (int b=0; b<tickets.length; b++) {
        sum=sum+tickets[b];
      }
      popular.set (destinations[d], sum);
      sum=0;
    }
  }
  popular.sortValuesReverse ();
  String first ="";
  String second="";
  String third="";
  String forth="";
  String fifth="";
  String sixth="";
  if (popular.size()==1) {
    first = popular.keyArray () [0];
  } else if (popular.size()==2) {
    first = popular.keyArray () [0];
    second=popular.keyArray () [1];
  } else if (popular.size()==3) {
    first = popular.keyArray () [0];
    second=popular.keyArray () [1];
    third=popular.keyArray () [2];
  } else if (popular.size()==4) {
    first = popular.keyArray () [0];
    second=popular.keyArray () [1];
    third=popular.keyArray () [2];  
    forth=popular.keyArray () [3];
  } else if (popular.size()==5) {
    first = popular.keyArray () [0];
    second=popular.keyArray () [1];
    third=popular.keyArray () [2];  
    forth=popular.keyArray () [3];
    fifth=popular.keyArray () [4];
  } else if (popular.size()>5) {
    first = popular.keyArray () [0];
    second=popular.keyArray () [1];
    third=popular.keyArray () [2];  
    forth=popular.keyArray () [3];
    fifth=popular.keyArray () [4];
    sixth=popular.keyArray () [5];
  }
  String popularones[]={first, second, third, forth, fifth, sixth};
  fonts = new Fonts ();  
  departure = new Labels ("Departure:","Saris", 911, 97);
  destination = new Labels ("Destination:", dest, 910, 193);
  ticket = new sign("Tickets", 1, 910, 290);
  tariff = new Labels ("Tariff:", "", 910, 386);
  alpha=new sort("A", "Z", 846, 108);
  desti=new sdesti("D", 807, 108);
  print=new Button(1, "Print" );
  discard=new Button(2, "Discard");
  buttons = new Button [0];
  populas =new popu[0]; 
  tit =new title("Kaliti", 35, 30);
  for (int b = 0; b < labels.length; b ++) {
    Button button = new Button (0, labels [b]);
    buttons =  (Button [])append (buttons, button);
  }

  for (int b = 0; b < popularones.length; b ++) {
    popu populed = new popu (popularones [b]);
    populas =  (popu [])append (populas, populed);
  }
  plus=new shaper("plus2", 1298, 324);
  minus=new shaper("minus2", 1224, 324);
  subtotal= new money(0, "Subtotal:", 947, 533);
  servcharge= new money(0, "Service Charge (4%):", 947, 570);
  total= new money(0, "Total", 947, 629);
}
void draw() {
  background(255);
  fill(#4CAF50);
  rect(911, 0, 455.3, 768);
  departure.draw ();
  destination.draw();
  ticket.draw();
  tariff.draw ();
  desti.draw();
  alpha.draw();
  print.draw(1143, 679);
  discard.draw(948, 679);
  plus.draw();
  minus.draw();
  subtotal.draw();
  total.draw();
  servcharge.draw();
  tit.draw();
  for (int b = 0; b < buttons.length; b ++) {
    if (b<=2) {
      buttons [b].draw (280+ 193*b + 14*b, 148);
    }  
    if (b<=5&&b>=3) {
      buttons [b].draw (280 + 193*(b-3) + 14*(b-3), 212);
    }  
    if (b<=8&&b>=6) {
      buttons [b].draw (280 + 193*(b-6 )+ 14*(b-6), 276);
    }
    if (b<=11&&b>=9) {
      buttons [b].draw (280 + 193*(b-9)+ 14*(b-9), 340);
    }
    if (b<=14&&b>=12) {
      buttons [b].draw (280 + 193*(b-12 )+ 14*(b-12), 404);
    }
    if (b<=17&&b>=15) {
      buttons [b].draw (280 + 193*(b-15 )+ 14*(b-15), 468);
    } 
    if (b<=20&&b>=18) {
      buttons [b].draw (280 + 193*(b-18 )+ 14*(b-18), 532);
    }
    if (b<=23&&b>=21) {
      buttons [b].draw (280 + 193*(b-21 )+ 14*(b-21), 596);
    }
    if (b<=26&&b>=24) {
      buttons [b].draw (280 + 193*(b-24 )+ 14*(b-24), 660);
    }
  }
  for (int b = 0; b < populas.length; b ++) {
    if (b<=2) {
      populas [b].draw (280+ 193*b + 14*b, 622);
    }  
    if (b<=5&&b>=3) {
      populas [b].draw (280 + 193*(b-3) + 14*(b-3), 680);
    }
  }
}

void mouseReleased () {
  for (int b = 0; b < buttons.length; b ++) {
    if (buttons [b].hovered()) {
      dest=buttons[b].label;
      destination = new Labels ("Destination:", dest, 910, 193);
      Table table = loadTable(tablePath, "header");
      String stations [] = table.getStringColumn("station");
      String fees [] = table.getStringColumn ("fee");
      for (int a=0; a<table.getRowCount(); a++) {
        stationsFees.set (stations [a], float (fees [a]));
      }
      tariff = new Labels ("Tariff:", stationsFees.get (dest)+"  Birr", 910, 386);
    }
  }
  for (int b = 0; b < populas.length; b ++) {
    if (populas[b].hovered()) {
      dest=populas[b].label;
      destination = new Labels ("Destination:", dest, 910, 193);
      Table table = loadTable(tablePath, "header");
      String stations [] = table.getStringColumn("station");
      String fees [] = table.getStringColumn ("fee");
      for (int a=0; a<table.getRowCount(); a++) {
        stationsFees.set (stations [a], float (fees [a]));
      }
      tariff = new Labels ("Tariff:", stationsFees.get (dest)+"  Birr", 910, 386);
    }
  }
  if (discard.hovered()) {
    println("Discard");
    a=1;
    destination = new Labels ("Destination:", "", 910, 193);
    tariff = new Labels ("Tariff:", "", 910, 386);
    subtotal= new money(0, "Subtotal:", 947, 533);
    servcharge= new money(0, "Service Charge (4%):", 947, 570);
    total= new money(0, "Total", 947, 629);
    dest="";
  } else if (print.hovered()) {
    println("Print");
    if (!dest.equals("")) {
      for (int i=1; i<=a; i++) {
        new qrcode(dest);
      }
      new monthly(dest, a);
    }
    a=1;
    destination = new Labels ("Destination:", "", 910, 193);
    tariff = new Labels ("Tariff:", "", 910, 386);
    subtotal= new money(0, "Subtotal:", 947, 533);
    servcharge= new money(0, "Service Charge (4%):", 947, 570);
    total= new money(0, "Total", 947, 629);
    dest="";
    IntDict popular= new IntDict ();
    for (int d=0; d<destinations.length; d++) {
      String tablePath = "C:/Users/Lenovo/Desktop/project/dest/"+destinations[d]+"/"+month()+".csv";
      File file = new File (tablePath);
      if (file.exists()) {
        Table table = loadTable(tablePath, "header");
        int tickets [] = table.getIntColumn(day()+"-Ticket ordered");
        for (int b=0; b<tickets.length; b++) {
          sum=sum+tickets[b];
        }
        popular.set (destinations[d], sum);
        sum=0;
      }
    }
    popular.sortValuesReverse ();
    String first = popular.keyArray () [0];
    String second="";
    String third="";
    String forth="";
    String fifth="";
    String sixth="";
    if (popular.size()==1) {
      first = popular.keyArray () [0];
    } else if (popular.size()==2) {
      first = popular.keyArray () [0];
      second=popular.keyArray () [1];
    } else if (popular.size()==3) {
      first = popular.keyArray () [0];
      second=popular.keyArray () [1];
      third=popular.keyArray () [2];
    } else if (popular.size()==4) {
      first = popular.keyArray () [0];
      second=popular.keyArray () [1];
      third=popular.keyArray () [2];  
      forth=popular.keyArray () [3];
    } else if (popular.size()==5) {
      first = popular.keyArray () [0];
      second=popular.keyArray () [1];
      third=popular.keyArray () [2];  
      forth=popular.keyArray () [3];
      fifth=popular.keyArray () [4];
    } else if (popular.size()>
      5) {
      first = popular.keyArray () [0];
      second=popular.keyArray () [1];
      third=popular.keyArray () [2];  
      forth=popular.keyArray () [3];
      fifth=popular.keyArray () [4];
      sixth=popular.keyArray () [5];
    }
    String popularones[]={first, second, third, forth, fifth, sixth};
    populas =new popu[0]; 
    for (int b = 0; b < popularones.length; b ++) {
      popu populed = new popu (popularones [b]);
      populas =  (popu [])append (populas, populed);
    }
    printArray(populas);
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
  if (minus.hovered()) {
    println("minus");
    a--;
    if (a<=1) {
      a=1;
    }
  }
  if (plus.hovered()) {
    println("plus");
    a++;
  } 
  ticket = new sign("Tickets", a, 910, 290);
  if (!dest.equals("")) {
    subtotal.birr=a*stationsFees.get (dest);
    servcharge= new money(a*stationsFees.get (dest)*4/100, "Service Charge (4%):", 947, 570);
    total= new money(a*stationsFees.get (dest)+a*stationsFees.get (dest)*4/100, "Total", 947, 629);
  }
}
