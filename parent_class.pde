class shape_move {
  shape_move(float xx, float yy, float dd) {
    x = xx;
    y = yy;
    d = dd;
    vx = random(-2, 2);
    vy = random(-2, 2);
    k = 60;
  }

  shape_move() {
    x = random(300, 800);
    y = random(300, 350);
    d = random(5, 8);
    vx = random(-4, 4);
    vy = random(-4, 4);
    k = 60;
  }
  float x, y, d, vx, vy, k;

  void drawshape() {
    circle(x-d*7, y-d*7.5, d*5);
    circle(x+d*7, y-d*7.5, d*5);
    circle(x, y, d*20);
  }

  void update() {
    y += vy;
    x += vx;
    if (y > height || y < 0) vy = -vy;
    if (x < 0 || x > width) vx = -vx;
  }
}
