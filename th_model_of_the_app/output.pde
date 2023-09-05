class Label {
  String sho;
  PFont f;
  int x, y;
  Label(String sho) {
    this.sho=sho;
    f=createFont("C:/Users/Lenovo/Documents/Processing/libraries/fonts/gotham-cufonfonts/GothamBook.ttf", 16);
  }
  void draw(int x, int y) {
    this.x=x;
    this.y=y;
    fill(255);
    textAlign(LEFT, BOTTOM);
    textFont(f);
    text(sho, x, y);
  }
}
