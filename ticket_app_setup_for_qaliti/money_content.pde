class content {
  String fee;
  float x, y;
  content(String fee, float x, float y) {
    this.fee=fee;
    this.x=x;
    this.y=y;
  }
  void draw() {
    fill(0);
    textSize(27);
    textAlign(CENTER,CENTER);
    text(fee, x, y);
  }
}
