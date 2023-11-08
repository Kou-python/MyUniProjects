PImage img1;//door
PImage img2;
PImage img3;//key
PImage img4;//table

void setup() {
  background(255, 255, 255);
  size(500, 500);
  //
  img1=loadImage("door_close.png");
  img2=loadImage("door_open.png");
  img3=loadImage("key.png");
  img4=loadImage("table.png");
  //
  fill(#F7E7D9);
  rect(0, 50, 450, 300); 
  quad(450, 50, 500, 0, 500, 500, 450, 350);

  scaleImage(img1, 90, 140, 0.3);
  scaleImage(img4, 270, 300, 0.25);
  scaleImage(img3, 310, 310, 0.05);
}

void scaleImage(PImage img, int x, int y, float scale) {
  image(img, x, y, img.width*scale, img.height*scale);
}

boolean key = false;

/*
void mousePressed() {
 if (mouseX>250) {
 key = true;
 room();
 scaleImage(img1, 90, 140, 0.3);
 } else if (mouseX<250) {
 if (key) {
 room();
 scaleImage(img2, 75, 140, 0.3);
 
 //※ドアを開ける処理
 }
 }
 }
 */
//自分用のメモです。Don't take care.

//
void  room() {
  background(255, 255, 255);
  fill(#F7E7D9);
  rect(0, 50, 450, 300); 
  quad(450, 50, 500, 0, 500, 500, 450, 350);
  scaleImage(img4, 270, 300, 0.25);
}

void draw() {
  if (mouseX>250) {
    if (mousePressed) {
      key = true;
      room();
      scaleImage(img1, 90, 140, 0.3);
    }
  } else {
    if (mousePressed) {
      if (key) {
        room();
        scaleImage(img2, 20, 155, 0.3);
      }
    }
  }
}
