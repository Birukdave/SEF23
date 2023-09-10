class sort {
  int x, y;
  int w=31, h=31, radius=4;
  String sorting1, sorting2;
  sort(String sorting1, String sorting2, int x, int y) {
    this.x=x;
    this.y=y;
    this.sorting1=sorting1;
    this.sorting2=sorting2;
  }
  void draw() {
    if (mouseX>=x && mouseY>=y && mouseX<=x+w && mouseY<=y+h) {
      stroke(#707070);
      strokeWeight(0);
      fill(#CDE9CE);
      rect(x, y, w, h, radius);
      fill(#4CAF50);
      textSize(10);
      text(sorting1, x+w*1/4, y+h*1/4);
      text(sorting2, x+w*1/4, y+h*3/4);
      stroke(2);
      line(x+w*3/4, y+h*1/4, x+w*3/4, y+h*3/4);
      if (mousePressed) {
        stroke(#707070);
        strokeWeight(0);
        fill(#4CAF50, 255*0.5);
        rect(x, y, w, h, radius);
        fill(#4CAF50);
        textSize(10);
        text(sorting1, x+w*1/4, y+h*1/4);
        text(sorting2, x+w*1/4, y+h*3/4);
        stroke(2);
        line(x+w*3/4, y+h*1/4, x+w*3/4, y+h*3/4);
      }
    } else {
      stroke(#707070);
      strokeWeight(0);
      fill(#4CAF50, 255*0.1);
      rect(x, y, w, h, radius);
      fill(#4CAF50);
      textSize(10);
      text(sorting1, x+w*1/4, y+h*1/4);
      text(sorting2, x+w*1/4, y+h*3/4);
      stroke(2);
      line(x+w*3/4, y+h*1/4, x+w*3/4, y+h*3/4);
    }
  }
  boolean hovered () 
  {
    return mouseX > x && mouseX < x+ w && mouseY > y && mouseY < y + h;
  }
}
