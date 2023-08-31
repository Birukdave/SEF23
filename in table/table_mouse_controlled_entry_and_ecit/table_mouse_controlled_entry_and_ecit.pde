import com.cage.zxing4p3.*;
ZXING4P zxing;
String station_point="srs";
String tablePath = "C:/Users/Lenovo/Desktop/project/every station code and destination.csv";
Table table;
void setup() {
  table = loadTable (tablePath, "header");
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
    String ticketstartpt = getStartingPoint (code);
    if (ticketstartpt.equals(station_point)) {
      print ("open the door on entry\n");
    } else {
      print ("don't open the door on entry\n");
    }
      int CIndex = table.getColumnIndex ("code");
  for (int a=0; a<table.getRowCount(); a++) {
    String the_code=table.getString (a, CIndex);
    if (the_code.equals(code)) {
       table.setString(a,CIndex,code+"@"); 
saveTable(table, tablePath);
    }
  }
  }
}
void exitGate (File file) {
  if (file != null) {
    String path = file.getAbsolutePath();
    PImage image = loadImage (path);
    String code = zxing.decodeImage (true, image);
    println (code);
    String dest=getfinishingpt(code);
    if (dest.equals(station_point)||dest.equals("mkt")) {
      println("open the door on exit\n");
    } else {
      println("don't open the door on exit\n");
    }
    int CIndex = table.getColumnIndex ("code");
    code=code+"@";
    for (int a=0; a<table.getRowCount(); a++) {
      String the_code=table.getString (a, CIndex);
      if (the_code.equals(code)) {
        table.setString(a,CIndex,code+"#"); 
saveTable(table, tablePath);
      }
    }
  }
}
String getStartingPoint(String code) {
  String ticketstartpt="";
  boolean qrcod=false;
  int CIndex = table.getColumnIndex ("code");
  int SIndex = table.getColumnIndex ("starting point");
  for (int a=0; a<table.getRowCount(); a++) {
    String the_code=table.getString (a, CIndex);
    if (the_code.equals(code)) {
      qrcod=true;
      ticketstartpt=table.getString(a, SIndex);
    }
  }
  return ticketstartpt;
}
String getfinishingpt(String code) {
  String dest="";
  boolean qrcod=false;
  int CIndex = table.getColumnIndex ("code");
  int DIndex = table.getColumnIndex ("destination point");
  code=code+"@";
  for (int a=0; a<table.getRowCount(); a++) {
    String the_code=table.getString (a, CIndex);
    if (the_code.equals(code)) {
      qrcod=true;
      dest=table.getString(a, DIndex);
    }
  }
  return dest;
}
