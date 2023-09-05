import org.apache.commons.lang3.RandomStringUtils;
import com.cage.zxing4p3.*;
PGraphics pg;

class qrcode {
  String dest;
  ZXING4P qrGen;
  PImage  QRCode;
  PFont font;
  int day=day();
  int month=month();
  int year=year();
  String starting_point="qlt";

  qrcode(String dest) {
    this.dest=dest;
    qrGen = new ZXING4P();
    pg = createGraphics(800, 600);

    pg.beginDraw();

    pg.background (255);
    pg.textAlign(CENTER, CENTER);
    pg.textSize(30);
    pg.fill(0);
    pg.text("ethiopian land train corporation addis ababa's", 400, 40);
    pg.text("simple train transite survice", 400, 70);
    pg.textSize(30);
    pg.textAlign(CENTER, CENTER);
    pg.fill(#6A052C);
    pg.text(day+"/"+month+"/"+year, 650, height/2);
    pg.textSize(30);
    pg.textAlign(CENTER, CENTER);
    pg.fill(#3F115F);

    pg.text(destmoney.fee+" ETB", 90, height/2);


    String code = RandomStringUtils.randomAlphanumeric (7);
    print(code);

    String tablePath = "c:/users/Lenovo/Desktop/project/every station code and destination.csv";

    Table table = loadTable (tablePath, "header");
    print(code);
    TableRow newRow = table.addRow ();
    newRow.setString ("starting point", starting_point);
    newRow.setString ("code", code);
    newRow.setString ("destination point", dest);
    saveTable (table, tablePath);
    QRCode = qrGen.generateQRCode(code, 300, 300);
    pg.imageMode (CENTER);
    pg.image (QRCode, 400, 300);

    pg.save("C:\\Users/Lenovo/Desktop/project/every qrcode pictures/ticket"+code + ".png");
    pg.endDraw();
  }
}
