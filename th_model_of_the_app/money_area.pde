class money {
  String type;
  int x, y;
  float birr;
  money(float birr, String type, int x, int y) {
    this.type=type;
    this.birr=birr;
    this.x=x;
    this.y=y;
  }
  void draw() {
    textAlign(LEFT, CENTER);
    textFont (fonts.gotham.book, 16);
    text(type, x, y);  
    textAlign(RIGHT, CENTER);
    textFont (fonts.gotham.medium, 23);
    text(birr+" Birr", x+340, y);
  }
}
