class lion extends shape_move {
  lion(float xx, float yy, float dd) {
    super(xx, yy, dd);
  }

  lion() {
    super();
  }

  void lion_show() {
    strokeWeight(5);
    fill(250, 200, 0);
    drawshape();
    line(x-d*6, y-d*4, x-d*3.5, y-d*4);
    line(x+d*6, y-d*4, x+d*3.5, y-d*4);
    fill(0);
    circle(x-d*4.5, y-d*1.5, d);
    circle(x+d*4.5, y-d*1.5, d);
    triangle(x-d*0.5, y+d*0.5, x+d*0.5, y+d*0.5, x, y+d*1.5);
    fill(255);
    circle(x-d*1.5, y+d*2.5, d*3.5);
    circle(x+d*1.5, y+d*2.5, d*3.5);
  }
}
