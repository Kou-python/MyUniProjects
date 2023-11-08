float small_x = 50;       // 小さな正方形のX座標
float small_y = 200;      // 小さな正方形のY座標
float big_x = 50;         // 大きな正方形のX座標
float big_y = 200;        // 大きな正方形のY座標

float small_speed_x = 1;  // 小さな正方形のX座標方向への移動量
float small_speed_y = 2;  // 小さな正方形のY座標方向への移動量
float big_speed_x = 3;    // 大きな正方形のX座標方向への移動量
float big_speed_y = 2;    // 大きな正方形のY座標方向への移動量

int small_size = 50;      // 小さな正方形の一辺の長さ
int big_size = 80;        // 大きな正方形の一辺の長さ

int small_state = 0;      // 小さな正方形の状態
int big_state = 0;        // 大きな正方形の状態

int click_counter = 0;    // 正方形がクリックされた回数

boolean small, big=false;

void setup() {
  size(500, 500);
  background(255, 255, 255);
}

void draw() {
  background(255, 255, 255);
  //小さな正方形
  if (small_state==0) {
    fill(255, 255, 255);
  }

  if (small_state==3) {
    fill(255, 255, 255);
  }
 
  if (small_state==1) {    
    fill(0, 255, 0);
  }

  if (small_state==2) {
    fill(255, 0, 0);
  }

  square(small_x, small_y, small_size);

  //大きな正方形//
  if ( big_state==0) {
    fill(255, 255, 255);
  }
  if (big_state==1) {    
    fill(0, 255, 0);
  }
  if ( big_state==2) {
    fill(255, 0, 0);
  }
   if ( big_state==3) {
    fill(255, 255, 255);
  }
  square(big_x, big_y, big_size);

  small_x+=small_speed_x;
  small_y+=small_speed_y;
  big_x+=big_speed_x;
  big_y+=big_speed_y;

  //動き
  if (small_x<0) {
    small_speed_x=-small_speed_x;
  }
  if (big_x<0) {
    big_speed_x=-big_speed_x;
  }

  if (small_x+small_size>=500) {
    small_speed_x=-small_speed_x;
  }
  if (big_x+big_size>=500) {
    big_speed_x=-big_speed_x;
  }  
  if (small_y<0) {
    small_speed_y=-small_speed_y;
  }
  if (big_y<0) {
    big_speed_y=-big_speed_y;
  }
  if (small_y+small_size>=500) {
    small_speed_y=-small_speed_y;
  }
  if (big_y+big_size>=500) {
    big_speed_y=-big_speed_y;
  }
}



void mousePressed() {
  if (mouseX>=small_x&&mouseX<small_x+small_size&&mouseY>=small_y&&mouseY<small_y+small_size) {
    small_state=small_state%3+1;
    click_counter+=1;
    println("クリック"+click_counter+"回目");
  }

  if (mouseX>=big_x&&mouseX<big_x+big_size&&mouseY>=big_y&&mouseY<big_y+big_size) {
    big_state=big_state%3+1;
    click_counter+=1;
    println("クリック"+click_counter+"回目");
  }
  // println(small);
  // println(big);
  //println(small_state,big_state);
}
