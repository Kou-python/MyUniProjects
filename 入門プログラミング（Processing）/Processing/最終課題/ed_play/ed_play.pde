void gazo(PImage img, int x, int y, float scale) {
  image(img, x, y, img.width*scale, img.height*scale);
}
PImage i0, i1, i2, i3, i4, i5, i6, i7;
PImage img1;//door
PImage img2;
PImage img3;//key
PImage img4;//table
//画像
int scene, play;
//場面
boolean key = false;
boolean door = false;
//フラグ

void setup() {
  textFont(createFont("SansSerif", 24, true));
  background(255);
  size(600, 400);

  //i=loadImage("");
  i0=loadImage("play0.png");
  i1=loadImage("play1.png");
  i2=loadImage("play2.png");
  i3=loadImage("cardkey.png");
  i4=loadImage("start_text.png");
  i5=loadImage("cardoff.png");
  i6=loadImage("cardon.png");
  i7=loadImage("start.png");
  img1=loadImage("door_close.png");
  img2=loadImage("door_open.png");
  img3=loadImage("key.png");
  img4=loadImage("table.png");
}

void draw() {
  if (scene==0) {
    scene0();
  }
  if (scene==1) {//部屋
    if (play==0) {
      play0();
      migi();
    }
    if (play==1) {
      play1();
      migi();
      hidari();
    }
    if (play==2) {
      play2();
      hidari();
    }
  }
  if (scene==2) {
    scene2();
  }
}
void mousePressed() {
  println(play);
  if (scene==0) {
    if (mouseX>=200&&mouseX<=400&&mouseY>=300&&mouseY<=380) {
      scene=1;
    }
  }
  if (scene==1) {
    if (play==1) {
      if (mouseX>=560&&mouseY>=170&&mouseY<=230) {
        play=2;
      }
    }
      if (play==0) {
        if (mouseX>=560&&mouseY>=170&&mouseY<=230) {
          play=1;
        }
      }
    if (play==1) {
      if (mouseX<=40&&mouseY>=170&&mouseY<=230) {
        play=0;
        println("ok");
      }
    }
        if (play==2) {
      if (mouseX<=40&&mouseY>=170&&mouseY<=230) {
        play=1;
      }
    }
}


    if (scene==2) {
    }
    //println(mouseX, mouseY);
  }
  void scene0() {
    image(i7, 0, 0, 600, 400);
    textSize(60);
    text("脱出ゲーム", 70, 60);
    image(i4, 200, 300, 200, 80);
  }

  void play0() {
    image(i0, 0, 0, 600, 400);
    if (door == false) {
      gazo(img1, 60, 140, 0.3);
    }
    if (door == true) {
      gazo(img2, -25, 155, 0.3);
    }
  }
  void  play1() {
    image(i1, 0, 0, 600, 400);
    gazo(img4, 270, 300, 0.25);
  }

  void play2() {
    image(i2, 0, 0, 600, 400);
  }
  void scene2() {
  }

  void migi() {
    fill(0, 0, 0);
    triangle(590, 200, 560, 170, 560, 230);
  }
  void hidari() {
    fill(0, 0, 0);
    triangle(10, 200, 40, 170, 40, 230);
  }
