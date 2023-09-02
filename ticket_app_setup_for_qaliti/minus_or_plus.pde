class pluormin {
  float x, y, h, w;
  color c;
  String sign;
  pluormin(float x, float y, float h, float w, color c, String sign) {
    this.x=x;
    this.y=y;
    this.h=h;
    this.w=w;
    this.c=c;
    this.sign=sign;
  }
  void draw() {
    stroke(0);
    fill(c);
    ellipseMode(CENTER);
    ellipse(x, y, h, w);
    fill(0);
    textAlign(CENTER, CENTER);

    textSize(40);
    text(sign, x+1, y-7);
  }
  boolean hovered () 
  {
    return mouseX > x-h/2 && mouseX < x+h/2 && mouseY > y-w/2 && mouseY < y + w/2;
  }
}
