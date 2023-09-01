class money {
  String tablePath = "C:/Users/Lenovo/Desktop/project/sta_and_fee.csv";
  Table table = loadTable(tablePath, "header");
  String dest;
  float x, y;
  String fee;
  money(String dest, float x, float y) {
    this.x=x;
    this.y=y;
    this.dest=dest;
  }
  void draw() {
    int cIndex = table.getColumnIndex ("Stations");
    int fIndex = table.getColumnIndex ("Fee");
    for (int a=0; a<table.getRowCount(); a++) {
      String station=table.getString (a, cIndex);
      if (dest.equals(station)) {
  fee=table.getString (a, fIndex);
     fill(0);
   textSize(27);
   textAlign(LEFT,BOTTOM);
     text(fee,x,y);
      }
    }
  }
}
