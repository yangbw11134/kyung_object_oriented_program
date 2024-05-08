class Bear extends shape_move {
  Bear(float xx, float yy, float dd) {
    super(xx, yy, dd);
  }

  Bear() {
    super();
  }
  void bear_show() {
    fill(139, 69, 19);
    drawshape();
    fill(0);
    circle(x - d*2, y - d*2, d);
    circle(x + d*2, y - d*2, d);
    ellipse(x, y, d*2, d);
    fill(255, 0, 0);
    arc(x, y + d*2, d*6, d*2, 0, PI);
  }
}
