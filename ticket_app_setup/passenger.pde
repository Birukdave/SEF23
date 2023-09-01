class passenger {
  float x, y;
  passenger(float x, float y) {
    this.x=x;
    this.y=y;
  }
  void draw() {
    fill(255,0);
    rect(x, y, 318, 64, 10);
  }
}
