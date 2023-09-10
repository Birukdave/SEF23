class sdesti {
  int x, y;
  int w=31, h=31, radius=4;
  String sorting1;
  sdesti(String sorting1, int x, int y) {
    this.x=x;
    this.y=y;
    this.sorting1=sorting1;
  }
  void draw() {
    if (mouseX>=x && mouseY>=y && mouseX<=x+w && mouseY<=y+h) {
      fill(#CDE9CE);
      rect(x, y, w, h, radius);
      fill(#4CAF50);
      textAlign(LEFT,CENTER);
      textSize(15);
      text(sorting1, x+w*1/4, y+h*1/2);
      stroke(2);
      line(x+w*3/4, y+h*1/4, x+w*3/4, y+h*3/4);
      if (mousePressed) {
        fill(#4CAF50, 255*0.5);
        rect(x, y, w, h, radius);
        fill(#4CAF50);
        textAlign(LEFT,CENTER);
        textSize(15);
        text(sorting1, x+w*1/4, y+h*1/2);
        stroke(2);
        line(x+w*3/4, y+h*1/4, x+w*3/4, y+h*3/4);
      }
    } else {
      fill(#4CAF50, 255*0.1);
      rect(x, y, w, h, radius);
      fill(#4CAF50);
      textSize(15);
      textAlign(LEFT,CENTER);
      text(sorting1, x+w*1/4, y+h*1/2);
      stroke(2);
      line(x+w*3/4, y+h*1/4, x+w*3/4, y+h*3/4);
    }
  }
  boolean hovered () 
  {
    return mouseX > x && mouseX < x+ w && mouseY > y && mouseY < y + h;
  }
}
