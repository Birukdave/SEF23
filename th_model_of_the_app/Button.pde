class Button {
  PFont f;
  String label;
  float x, y;
  int m;
  int radius=4;
  int w=193, h=50;

  Button (int m, String label) {
    this.label=label;
    this.m=m;

    f=createFont("C:/Users/Lenovo/Documents/Processing/libraries/fonts/gotham-cufonfonts/Gotham-Bold.otf", 14);
  }
  void draw (float x, float y) {
    this.x = x;
    this.y = y;
    
    if (m==0) {   
      if (hovered()) {

        fill(#CDE9CE);
        stroke(#4CAF50, 255*0.3);
        rect (x, y, w, h, radius);
        fill (#55B359);
        textSize (14);
        textFont(f);
        textAlign (CENTER, CENTER);
        text (label.toUpperCase(), x + w/2, y + h/2);
        if (mousePressed) {
          fill(#4CAF50, 255*0.5);
          stroke(#4CAF50, 255*0.3);
          rect (x, y, w, h, radius);
          fill (#55B359);
          textSize (14);
          textFont(f);
          textAlign (CENTER, CENTER);
          text (label.toUpperCase(), x + w/2, y + h/2);
        }
      } else {
        stroke (#4CAF50, 255*0.3);


        fill (#4CAF50, 255*10/100);
        rect (x, y, w, h, radius); 

        fill (#55B359);
        textFont(f);
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
        fill (#4CAF50);
        textSize (14);
        textFont(f);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
        if (mousePressed) {
          fill(#87C98A);
          noStroke();
          rect (x, y, w, h, radius);
          fill (255);
          textSize (14);
          textFont(f);
          textAlign (CENTER, CENTER);
          text (label, x + w/2, y + h/2);
        }
      } else {
        fill (255);
        noStroke();
        rect (x, y, w, h, radius); 
        fill (#4CAF50);
        textFont(f);
        textSize (14);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
      }
    } else if (m==2) {
      w=185;
      if (hovered()) {
        fill(#3F8742);
        stroke(255);
        strokeWeight(3);
        rect (x, y, w, h, radius);
        fill (255);
        textSize (14);
        textFont(f);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
        if (mousePressed) {
          fill(#346836);
          noStroke();
          rect (x, y, w, h, radius);
          fill (255);
          textSize (14);
          textFont(f);
          textAlign (CENTER, CENTER);
          text (label, x + w/2, y + h/2);
        }
      } else {
        fill (#4CAF50);
        stroke(255);
        strokeWeight(3);
        rect (x, y, w, h, radius); 
        fill (255);
        textFont(f);
        textSize (14);
        textAlign (CENTER, CENTER);
        text (label, x + w/2, y + h/2);
      }
    }
  }
  boolean hovered() {
    return mouseX>=x && mouseY>=y && mouseX<=x+w && mouseY<=y+h;
  }
}
