class popu {
  String label;
  float x, y;
  int radius=4;
  int w=193, h=50;

  popu (String label) {
    this.label=label;
  }
  void draw (float x, float y) {
    this.x = x;
    this.y = y;  
      textFont(fonts.gotham.medium,14);
      if (hovered()) {

        fill(#3F8742);
        noStroke();
        rect (x, y, w, h, radius);
        fill (white);
        textAlign (CENTER, CENTER);
        text (label.toUpperCase(), x + w/2, y + h/2);
        if (mousePressed) {
          fill(#346836);
          noStroke();
          rect (x, y, w, h, radius);
          fill (white);
          textAlign (CENTER, CENTER);
          text (label.toUpperCase(), x + w/2, y + h/2);
        }
      } else {
        noStroke();
        fill (green,255);
        rect (x, y, w, h, radius); 
        fill (white);
        textAlign (CENTER, CENTER);
        text (label.toUpperCase(), x + w/2, y + h/2);
      }
  }
   boolean hovered() {
    return mouseX>=x && mouseY>=y && mouseX<=x+w && mouseY<=y+h;
  }
}
