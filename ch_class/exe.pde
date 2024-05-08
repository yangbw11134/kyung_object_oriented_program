covy cv;
Bear [] Be;
lion [] li;
Bear be2;
lion li2;
int delay =0, goal =0;

void setup() {
  size(1000, 500);
  cv = new covy(950, 450, 50);
  Be = new Bear[2];
  li = new lion[2];
  
  be2 = new Bear(300, 300, 4);
  li2 = new lion(300, 300, 4);
  
  for (int i = 0; i<2; i++) {
    Be[i] = new Bear();
    li[i] = new lion();
  }
}

void draw() {
  background(30, 30, 70);
  spaceship(100, 70, 13);
  if (delay != 0)    fail();
  else if (goal != 0) showSuccess();

  cv.covy_show();
  li2.update();
  be2.update();
  li2.lion_show();
  be2.bear_show();

  if(delay == 0) delay = cv.fail(be2.x, be2.y, be2.k);
  if(delay == 0) delay = cv.fail(li2.x, li2.y, li2.k);
  
  for (int i =0; i<2; i++) {
    Be[i].update();
    li[i].update();
    Be[i].bear_show();
    li[i].lion_show();

    if (delay == 0)   delay = cv.fail(Be[i].x, Be[i].y, Be[i].k);
    if (delay == 0)  delay = cv.fail(li[i].x, li[i].y, li[i].k);
    if (goal == 0)  goal = cv.escape();
  }
}

void keyPressed() {
  cv.covy_keyMove();
}
