class Buttontype {
  color blue = #4D57E9;

  float x, y ;
  float w = 200, h = 63;
  float radius = 10;
  String lable;
  Buttontype(String lable, float x, float y) {
    this.x=x;
    this.y=y;
    this.lable=lable;
  }
  void draw () {

    if (hovered()) {
      fill(blue, 255*85/100);
      noStroke();
      rect (x, y, w, h, radius);
      fill (255);
      textSize (29);
      textAlign (CENTER, CENTER);
      text (lable, x + w/2, y + h/2);
      if (mousePressed) {
        fill(blue);
        noStroke();
        rect (x, y, w, h, radius);
        fill (255);
        textSize (29);
        textAlign (CENTER, CENTER);
        text (lable, x + w/2, y + h/2);
      }
    } else {

      stroke (blue);
      strokeWeight (3);

      fill (blue, 255*0.7);
      rect (x, y, w, h, radius); 

      fill (255);
      textSize (29);
      textAlign (CENTER, CENTER);
      text (lable, x + w/2, y + h/2);
    }
  }
  boolean hovered () 
  {
    return mouseX > x && mouseX < x+ w && mouseY > y && mouseY < y + h;
  }
}
