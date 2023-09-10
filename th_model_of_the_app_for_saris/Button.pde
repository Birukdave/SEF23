class Button {
  String label;
  float x, y;
  int m;
  int radius=4;
  int w=193, h=50;

  Button (int m, String label) {
    this.label=label;
    this.m=m;
  }
  void draw (float x, float y) {
    this.x = x;
    this.y = y;

    if (m==0) {   
      textFont(fonts.gotham.bold);
      if (hovered()) {

        fill(lightgreen);
        noStroke();
        rect (x, y, w, h, radius);
        fill (#55B359);
        textSize (14);
        textAlign (CENTER, CENTER);
        text (label.toUpperCase(), x + w/2, y + h/2);
        if (mousePressed) {
          fill(green, 255*0.5);
          noStroke();
          rect (x, y, w, h, radius);
          fill (#55B359);
          textSize (14);
          textAlign (CENTER, CENTER);
          text (label.toUpperCase(), x + w/2, y + h/2);
        }
      } else {
        noStroke();
        fill (green, 255*10/100);
        rect (x, y, w, h, radius); 
        fill (#55B359);
        textSize (14);
        textAlign (CENTER, CENTER);
        text (label.toUpperCase(), x + w/2, y + h/2);
      }
    } else if (m==1) {
      w=185;
      if (hovered()) {
        fill(#C7E2C8);
        noStroke();
        rect (x, y, w, h, radius);
        fill (green);
        textSize (16);
        textFont(fonts.gotham.bold);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
        if (mousePressed) {
          fill(#87C98A);
          noStroke();
          rect (x, y, w, h, radius);
          fill (white);
          textSize (16);
          textFont(fonts.gotham.bold);
          textAlign (CENTER, CENTER);
          text (label, x + w/2, y + h/2);
        }
      } else {
        fill (white);
        noStroke();
        rect (x, y, w, h, radius); 
        fill (green);
        textFont(fonts.gotham.bold);
        textSize (16);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
      }
    } else if (m==2) {
      w=185;
      if (hovered()) {
        fill(#3F8742);
        stroke(white);
        strokeWeight(3);
        rect (x, y, w, h, radius);
        fill (white);
        textSize (16);
        textFont(fonts.gotham.bold);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
        if (mousePressed) {
          fill(#346836);
          noStroke();
          rect (x, y, w, h, radius);
          fill (white);
          textSize (16);
          textFont(fonts.gotham.bold);
          textAlign (CENTER, CENTER);
          text (label, x + w/2, y + h/2);
        }
      } else {
        fill (green);
        stroke(255);
        strokeWeight(3);
        rect (x, y, w, h, radius); 
        fill (white);
        textFont(fonts.gotham.bold);
        textSize (16);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
      }
    }
  }
  boolean hovered() {
    return mouseX>=x && mouseY>=y && mouseX<=x+w && mouseY<=y+h;
  }
}
