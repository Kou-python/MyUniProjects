void s() {
  fill(r, g, b);
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

void setup() {
  size(500, 500);
  background(255, 255, 255);
}

int x=100, y=300, r, g, b;      // イカの位置と色
int speed;          // イカの移動速度
int speed_x=7, speed_y=5;      // x方向とy方向の移動速度
int squid_width, squid_height;  // イカの幅と高さ

int wall_x=0, wall_y=50;      // 壁の左上の位置
int wall_width=1000, wall_height=20;  // 壁の幅と高さ

int d;//x
int B;//y

void draw() {
  background(255, 255, 255);
  rect(wall_x, wall_y, wall_width, wall_height);

  s();
  x=x+speed_x;
  y=y+speed_y;

  if (x<=0) {
    speed_x=speed_x+3;
  }

  if (x>=500) {
    speed_x=speed_x-3;
  }  
  if (y<=0) {
    speed_y=speed_y+3;
  }
  if (y>=500) {
    speed_y=speed_y-3;
  }
  if (y<wall_y+20&y>wall_y+10)//下判定
  {
    speed_y=+5;
  }
  if (y>wall_y-10&y<wall_y)//上判定
  {
    speed_y=-5;
  }
}
