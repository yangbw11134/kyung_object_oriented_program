void spaceship(float x, float y, float r) {
  strokeWeight(1);
  fill(90, 90, 255);
  circle(x, y, r*10);
  fill(250, 250, 0);
  circle(x+r*4.5, y+r*4, r*3);
  circle(x-r*4.5, y+r*4, r*3);
  circle(x, y+r*4.5, r*3);
  fill(100, 100, 100);
  ellipse(x, y+r*2.5, r*15, r*5);
}

void showSuccess() {
  goal--;
  fill(0, 0, 250);
  textSize(100);
  textAlign(CENTER);
  text("Succcess\nGood Bye!", 500, 200);

}
void fail() {
  delay --;
  fill(250, 0, 0);
  textSize(100);
  textAlign(CENTER);
  text("Failed...", 510, 280);
}
