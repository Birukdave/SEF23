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
    int cIndex = table.getColumnIndex ("a");
    int fIndex = table.getColumnIndex ("Fee2");
    for (int a=0; a<table.getRowCount(); a++) {
      String station=table.getString (a, cIndex);
      if (dest.equals(station)) {
        fee=table.getString (a, fIndex);
        fill(0);
        textSize(27);
        textAlign(CENTER, CENTER);
        text(fee, x, y);
      }
    }
  }
}
