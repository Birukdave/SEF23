class  title {
  int x, y;
  String station;
  PShape train;
  title(String station, int x, int y) {
    this.x=x;
    this.y=y;
    this.station=station;
    train =loadShape("C:/Users/Lenovo/Desktop/project/pl and mi signs/train.svg");
  }
  void draw() {
    fill(green);
    shape(train, x, y);
    textAlign(LEFT, CENTER);
    textFont(fonts.gotham.bold, 19);
    text("Addis Ababa Light Rail", x+45, y+25);
    textAlign(RIGHT, CENTER);
    text(station, x+800, y+25);
    textFont(fonts.gotham.medium, 19);
    textAlign(LEFT, CENTER);
    text("-Ticketing system", x+275, y +25);
    stroke(green);
    strokeWeight(1);
    line(36.5, 96.5, 876, 96.5);
  }
}
