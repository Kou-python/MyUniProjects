PImage img1;
PImage img2;
int scene = 1;

void setup() {
  size(600, 400);
  img1=loadImage("START3.png");
  img2=loadImage("gameover.png");
  img1.resize(600, 400);

  if (scene==1) {
    image( img1, (width - img1.width)/2, 0 ); //<-中央に画像配置    //条件が満たされれば
  }
}

void draw() {
  if (scene == 1) {
    //スタート画面を描画する
  } else if (scene == 2) {
    //プレイ画面を描画する
    background(255, 255, 255);
    s();
    if (key == 'a') {
      x = x-3;
    }
    if (key=='w') {
      y=y-3;
    }
    if (key=='d') {
      x=x+3;
    }
    if (key=='s') {
      y=y+3;
    }
  } else if (scene == 3) {
    //ゲームオーバー画面を描画する
  }
}


void keyPressed() {
  if (key==' ') {
    scene=scene%3+1;
  } 
  if (scene == 1) {
    image( img1, (width - img1.width)/2, 0 ); //<-中央に画像配置    //条件が満たされれば
    //プレイ画面に状態遷移を起こす(変数sceneに2を代入する)
  } else if (scene == 2) {
    //条件が満たされれば
    //ゲームオーバー画面に状態遷移を起こす(変数sceneに3を代入する)
    background(255, 255, 255);

    background(255, 255, 255);
  } else if (scene == 3) {
    //条件が満たされれば
    //スタート画面に状態遷移を起こす(変数sceneに1を代入する)
    background(255, 255, 255);
    image( img2, (width - img2.width)/2, 0 ); //<-中央に画像配置    //条件が満たされれば
    x=256;
    y=358;
    s();
  }
  println(scene);
}

void s() {
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

int x=0;
int y=30;

void mousePressed() {
  println(mouseX, mouseY);
}
