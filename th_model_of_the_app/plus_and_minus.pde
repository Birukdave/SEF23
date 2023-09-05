class sign {
  String label1;

  int amount, x, y;
  float w = 455, h = 96;
  sign(String label1, int amount, int x, int y) {
    this.label1 = label1;
    this.amount=amount;
    this.x = x;
    this.y = y;
  }
  void draw () { 

    noStroke ();
    fill (white, 255 * 0.05);
    rect (x, y, w, h);

    stroke (white, 255 * 0.1);
    strokeWeight (1);
    line (x, y, x + w, y);
    line (x, y + h, x + w, y + h);

    fill (white);
    textAlign (LEFT, CENTER);
    textFont (fonts.gotham.book, 16);
    text (label1, x + 37, y + h/2);

    textAlign (CENTER, CENTER);
    textFont (fonts.gotham.medium, 24);
    text (amount, x + w - 91, y + h/2+7);
  }
}
