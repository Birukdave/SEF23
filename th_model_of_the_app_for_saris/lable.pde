class Labels {
  String label1, label2;

  float x, y;
  float w = 455, h = 96;

  Labels (String label1, String label2, float x, float y) {
    this.label1 = label1;
    this.label2 = label2;

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

    textAlign (RIGHT, CENTER);
    textFont (fonts.gotham.medium, 23);
    text (label2.toUpperCase (), x + w - 37, y + h/2);
  }
}
