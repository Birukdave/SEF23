import processing.video.*;
import com.cage.zxing4p3.*;
import processing.serial.*;
ZXING4P zxing;
Movie movie;
String prevcode="";
String station_point="Kaliti";
String tablePath = "C:/Users/Lenovo/Desktop/project/every station code and destination.csv";
Table table;
Serial uno;
String path = "http://192.168.8.178:8080/video";
void setup() {
  table = loadTable (tablePath, "header");

  uno = new Serial (this, "COM14", 9600);
  uno.bufferUntil ('\n');
  size(100, 100);

  movie = new Movie(this, path);
  movie.loop();
  zxing = new ZXING4P ();
}
void draw() {
  if (movie != null && movie.width != 0 && movie.height != 0) {
    image(movie, 2, 2);
    String code = zxing.decodeImage (true, movie);
    if (code != null && !code.isEmpty() && !prevcode.equals (code)) {
      String ticketstartpt = getStartingPoint (code);
      if (ticketstartpt.equals(station_point)) {
        uno.write ("open the door on entry\n");
      } else {
        uno.write ("don't open the door on entry\n");
      }
      int CIndex = table.getColumnIndex ("code");
      for (int a=0; a<table.getRowCount(); a++) {
        String the_code=table.getString (a, CIndex);
        if (the_code.equals(code)) {
          table.setString(a, CIndex, code+"@"); 
          saveTable(table, tablePath);
        }
      }
      prevcode=code;
    }
  }
}
void movieEvent(Movie m) {
  m.read();
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
