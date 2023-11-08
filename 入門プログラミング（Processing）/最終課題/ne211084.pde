import processing.sound.*;
SoundFile sound;

void gazo(PImage img, int x, int y, float scale) {
  image(img, x, y, img.width*scale, img.height*scale);
}
PImage i0, i1, i2, i3, i4, i5, i6, i7, bed, inbox, auto_door, 
  okamochi_close, okamochi_open, sofa, window, back, 
  tissue_close, tissue_open, desk, sofa_large, sofa_table, 
  clock_long, clock_short, clock_blank, last, 
  paper1, paper2, paper, paper3, 
  sun1, sun2, night1, night2, 
  no1, no2, no3, no4, no0
  ;
PImage img1;//door
PImage img2;
PImage img3;//key
PImage img4;//table
//画像
int scene, play, in;
//場面
boolean key = false;
boolean door = false;
boolean clock=false;
boolean cs=false;
boolean cl=false;
boolean sign=false;
//フラグ
int x, y;
//変数

void setup() {
  x=200;
  y=120;
  textFont(createFont("SansSerif", 24, true));
  background(255);
  size(600, 400);

  //i=loadImage(".png");
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
  bed=loadImage("bed.png");
  sofa=loadImage("sofa.png");
  desk=loadImage("desk.png");
  window=loadImage("window_night.png");
  tissue_close=loadImage("tissue_paper_box_close.png");
  tissue_open=loadImage("tissue_paper_box_open.png");
  okamochi_close=loadImage("okamochi_close.png");
  okamochi_open=loadImage("okamochi_open.png");
  sofa_large=loadImage("sofa_large.png");
  sofa_table=loadImage("sofa_table.png");
  clock_short=loadImage("clock_short.png");
  clock_long=loadImage("clock_long.png");
  clock_blank=loadImage("clock_blank.png");
  last=loadImage("play.png");
  paper=loadImage("paper.png");
  paper1=loadImage("paper1.png");
  paper2=loadImage("paper2.png");
  paper3=loadImage("paper3.png");
  sun1=loadImage("sun1.png");
  sun2=loadImage("sun2.png");
  night1=loadImage("night1.png");
  night2=loadImage("night2.png");
  back=loadImage("back.png");
  inbox=loadImage("inbox.png");
  auto_door=loadImage("auto_door.png");
  no0=loadImage("0.png");
  no1=loadImage("1.png");
  no2=loadImage("2.png");
  no3=loadImage("3.png");
  no4=loadImage("4.png");

  //画像
  sound = new SoundFile(this, "小箱迷宮.mp3");  //(2)
  //音声
}

void draw() {
  if (scene==0) {
    scene0();
  }
  if (scene==1) {//部屋
    if (in==0) {
      background(255);
    }
    if (play==0) {
      play0();
      migi();
    }
    if (play==-1) {
      play();
      if (in==3) {
        gazo(paper3, 100, 100, 0.3);
      }
      if (sign) {
        y=y-1;
      }
    }
    /////
    if (play==1) {
      play1();
      migi();
      hidari();

      if (in==1) {
        gazo(paper1, 100, 100, 0.3);
      }
    }
    ////////
    if (play==2) {
      play2();
      hidari();

      if (in==2) {
        gazo(paper2, 100, 100, 0.3);
      }
    }
    ////////
    image(back, 575, 5, 20, 20);
  }
  if (scene==2) {
    scene2();
  }
}
////////////////////////////////////
void mousePressed() {
  println(mouseX, mouseY);
  if (scene==0) {
    if (mouseX>=200&&mouseX<=400&&mouseY>=300&&mouseY<=380) {
      scene=1;
      sound.play();
    }
  }
  if (scene==2) {
    if (mouseY>200) {
      scene=0;
      play=0;
      door=false;
      sign=false;
      key=false;
      cs=false;
      cl=false;
    }
  }
  //////////////////////////
  if (scene==1) {//戻る
    if (mouseX>=575&&mouseY<=25) {
      in=0;
      println("ok");
    }
    /////////////
    if (play==-1) {
      if (mouseX>= 72&&mouseY>=147&&mouseX<=200&&mouseY<=273) {
        if (cs&&cl) {
          clock=true;
        }
      }
      if (mouseX>=138&&mouseY>=307&&mouseX<=178&&mouseY<=353) {
        in=3;
      }
      if (mouseX>=405&&mouseY>=303&&mouseX<=440&&mouseY<=335) {
        sign=true;
      }
      if (sign) {
        if (mouseX>=213&&mouseY>=162&&mouseX<=380&&mouseY<=270) {
          scene=2;
        }
      }
    }


    if (play==1) {
      if (mouseX>=560&&mouseY>=170&&mouseY<=230) {
        play=2;
      }
      if (mouseX>=295&&mouseY>=200&&mouseX<=305&&mouseY<=235) {
        cl=true;
      }
      if (mouseX>=310&&mouseY>=200&&mouseX<=325&&mouseY<=235) {
        cs=true;
      }
      if (mouseX>=150&&mouseY>=297&&mouseX<=170&&mouseY<=322) {
        in=1;
      }
    }
  }
  ///////
  if (play==0) {
    if (door) {
      if (mouseX>=120&&mouseY>=238&&mouseX<=170&&mouseY<=270) {
        play=-1;
      }
    }
    if (mouseX>=560&&mouseY>=170&&mouseY<=230) {
      play=1;
    }
    if (mouseX>=70&&mouseY>=153&&mouseX<=196&&mouseY<=348) {
      if (key) {
        door=true;
      }
    }
  }
  if (play==1) {
    if (mouseX<=40&&mouseY>=170&&mouseY<=230) {
      play=0;
    }
  }
  if (play==2) {
    if (mouseX<=40&&mouseY>=170&&mouseY<=230) {
      play=1;
    }
    if (mouseX>=125&&mouseY>=274&&mouseX<=144&&mouseY<=303) {
      in=2;
    }
    if (mouseX>=171&&mouseY>=247&&mouseX<=202&&mouseY<=275) {
      key=true;
    }
  }

  /////////////////////////////////////

  //println(mouseX, mouseY);
  println(play);
}
//////////////////////

void scene0() {
  image(i7, 0, 0, 600, 400);
  textSize(60);
  text("脱出ゲーム", 70, 60);
  image(i4, 200, 300, 200, 80);
}
/////////////////////////////////////

void play() {
  image(last, 0, 0, 600, 400);
  fill(#A2BEF7);
  rect(212, 160, 168, 114);
  gazo(auto_door, x, y, 0.2);
  gazo(paper, 130, 300, 0.3);
  gazo(no0, 290, 300, 0.2);
  gazo(no1, 350, 300, 0.2);
  gazo(no2, 400, 300, 0.2);
  gazo(no3, 300, 350, 0.2);
  gazo(no4, 350, 350, 0.2);

  if (sign==true) {
    gazo(i6, 386, 200, 0.3);
    fill(0);
    textSize(10);
    text("ここをクリックしてゴール！！", 236, 206);
  }
  if (sign==false) {
    gazo(i5, 386, 200, 0.3);
  }
  if (clock== false) {
    gazo(clock_blank, 60, 140, 0.3);
  }
  if (clock== true) {
    gazo(sun2, 60, 140, 0.3);
  }
}

void play0() {
  image(i0, 0, 0, 600, 400);
  gazo(sun1, 200, 50, 0.2);

  if (door == false) {
    gazo(img1, 60, 140, 0.3);
  }
  if (door == true) {
    gazo(img2, -25, 155, 0.3);
    triangle(150, 238, 120, 270, 170, 270);
  }
}
void  play1() {
  image(i1, 0, 0, 600, 400);
  gazo(sofa_large, 300, 220, 0.25);
  gazo(sofa_table, 50, 220, 0.25);
  gazo(paper, 140, 290, 0.2);
  gazo(night2, 200, 50, 0.2);
  if (cl==false) {
    gazo(clock_long, 300, 200, 0.2);
  }
  if (cs==false) {
    gazo(clock_short, 320, 200, 0.2);
  }
}

void play2() {
  image(i2, 0, 0, 600, 400);
  gazo(bed, 350, 200, 0.25);
  gazo(desk, 20, 200, 0.25);
  gazo(window, 250, 50, 0.25);
  gazo(paper, 115, 270, 0.2);
  gazo(night1, 200, 50, 0.2);
  if (key==false) {
    gazo(img3, 172, 245, 0.2);
  }
}
void scene2() {
  background(0);
  fill(#ffffff);
  textSize(60);
  text("ゲームクリア!!", 0, 100);
  text("おめでとう！！", 0, 200);
  image(back, 200, 300, 200, 80);
}

void migi() {
  fill(0, 0, 0);
  triangle(590, 200, 560, 170, 560, 230);
}
void hidari() {
  fill(0, 0, 0);
  triangle(10, 200, 40, 170, 40, 230);
}
