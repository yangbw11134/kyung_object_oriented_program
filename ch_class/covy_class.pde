class covy extends shape_move {
  covy (float xx, float yy, float dd) {
    super(xx, yy, dd/20);
  }

  //member function
  void covy_show() {
    strokeWeight(3);  // 캐릭터 선 굵기
    stroke(0, 0, 0);  // 캐릭터 선 색상
    fill(255, 153, 255); // 캐릭터 색상
    rotation(x+d/4*20, y+d*0.375*20, 0.2, d*0.375*20, 40);       // 3. 오른쪽 다리
    rotation(x-d/2*20, y+d*0.125*20, 3/4, d*0.35*20, 30);      // 4. 왼쪽 팔
    drawshape();
    circle(x+d/2*20, y-d/8*20, d/3*20);      // 6. 오른쪽 팔
    rotation(x- d/4*20, y+d*0.375*20, 3.3/4, d*0.4*20, 20);  // 7. 왼쪽 발

    // 8. 뺨
    fill(255, 51, 51);
    ellipse(x-d*5, y, d*0.18*20, d*0.08*20);
    ellipse(x+d*5, y, d*0.18*20, d*0.08*20);

    // 9. 눈
    fill(0, 0, 0);
    ellipse(x - d*2, y-d*4, d*2, d*0.25*20);
    ellipse(x + d*2, y-d*4, d*2, d*0.25*20);
    fill(255, 255, 255);
    ellipse(x - d*2, y-d*0.25*20, d*0.08*20, d*0.12*20);
    ellipse(x + d*2, y-d*0.25*20, d*0.08*20, d*0.12*20);

    // 10. 입
    fill(255, 0, 0);
    arc(x, y, d*0.125*20, d*0.19*20, 0, PI);
    line(x-d*0.05*20, y, x+d*0.05*20, y);
  }
  
  void rotation(float a, float b, float angle, float h, float w) {    
    translate(a, b);
    rotate(PI * angle);
    ellipse(0, 0, w, h);
    resetMatrix(); // 초기화
  }
  
  int fail(float xx, float yy, float kk) {
    float dx = x - xx;
    float dy = y - yy;
    float s = sqrt(dx*dx + dy*dy);
    if (s < kk) {
      x = 900;
      y = 450;
      return 100;
    } else return 0;
  }

  int escape() {
    if (x > 15 && x < 165 && y > 25 && y < 125) {
      x = 1500;
      y = 900;
      return 100;
    } else return 0;
  }

  void covy_keyMove() {
    if (key == 'd') x +=15;
    else if (key == 'a') x -=15;
    else if (key == 's') y +=15;
    else if (key == 'w') y -=15;
    else if ( x > width-25) x = width-25;
    else if ( x < 0) x = 0;
    else if ( y > height -40) y = height-40;
    else if (y < 0) y = 0;
  }
}
