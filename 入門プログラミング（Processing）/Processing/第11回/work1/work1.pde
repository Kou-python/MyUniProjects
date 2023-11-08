float box0_x, box1_x, box2_x; // 箱のx座標
float box_y;                  // 箱のy座標
float box_size;               // 箱のサイズ
float squid_x;                // イカのx座標
float squid_y;                // イカのy座標
int hiding;                   // イカの隠れている箱番号
int clicked;                  // クリックされた箱番号
int scene;                    // ゲーム中 または ゲーム終了
float x, y;
float a;
int st;

void setup() {
  size(500, 500);
  hiding=int(random(2));
  textFont(createFont("SansSerif", 24, true));
}

void draw() {
  if (scene==0) {
    background(255);
    a=random(1, 4);
    text("どれかのブロックを押せ", 50, 50);
    if (hiding==1) {
      x=50;
      y=300;
      ika();
    }
    if (hiding==2) {
      x=200;
      y=300;
      ika();
    }
    if (hiding==3) {
      x=350;
      y=300;
      ika();
    }
    fill(0);

    square(50, 250, 100);
    square(200, 250, 100);
    square(350, 250, 100);
  }
  if (scene==1) {
    if (int(millis()-st)/1000==3) {
      scene=0;
    }
    if (clicked==hiding) {
      background(255);
      fill(0);
      if (clicked==1) {
        square(200, 250, 100);
        square(350, 250, 100);
      } else if (clicked==2) {
        square(50, 250, 100);
        square(350, 250, 100);
      } else if (clicked==3) {
        square(50, 250, 100);
        square(200, 250, 100);
      } 
      text("勝ち", 50, 50);
      ika();
    } else {
      background(255);
      fill(0);
      if (clicked==1) {
        square(200, 250, 100);
        square(350, 250, 100);
      } else if (clicked==2) {
        square(50, 250, 100);
        square(350, 250, 100);
      } else if (clicked==3) {
        square(50, 250, 100);
        square(200, 250, 100);
      } 
      text("負け", 50, 50);
    }
  }
}
void mousePressed() {
  println(mouseX, mouseY);
  println(hiding);

  if (scene==1) {
  }
  if (scene==0) {
    if (mouseY>249&mouseY<351) {
      if (mouseX>49&mouseX<151) {
        clicked=1;
        scene=1;
        st=millis();
      }
      if (mouseX>=200&mouseX<301) {
        clicked=2;
        scene=1;
        st=millis();
      }
      if (mouseX>349&mouseX<451) {
        clicked=3;
        scene=1;
        st=millis();
      }
    }
  }
}
void ika() {
  hiding=int(a);
  s();
}
void s() {
  squid_x=x;
  squid_y=y;
  fill(0, 0, 0);
  triangle(x, y, x+20, y-20, x+40, y);
  rect(x+5, y, 30, 30);
  ellipse(x+10, y+30, 10, 30);
  ellipse(x+20, y+30, 10, 30);
  ellipse(x+30, y+30, 10, 30);
  fill(255, 255, 255);
  ellipse(x+15, y+10, 10, 15);
  ellipse(x+25, y+10, 10, 15);
  fill(0, 0, 0);
  ellipse(x+15, y+10, 5, 5);
  ellipse(x+25, y+10, 5, 5);
}
