import processing.sound.*;
SoundFile sound;  //(1)

PImage img1;  //(1)
PImage img2;

void setup() {
  size(500, 500);
  background(0, 0, 0);
  sound = new SoundFile(this, "焚き火.mp3");  //(2)
  img1 = loadImage("rousoku_you.png");  //(2)
  img2 = loadImage("rousoku_you_fire.png");  //(2)

  scaleImage(img1, 150, 150, 0.7) ;
}

void scaleImage(PImage img, int x, int y, float scale) {
  image(img, x, y, img.width*scale, img.height*scale);
}



void draw() {  //mousePressed() を機能させるために必要
}


void mousePressed() {
  background(0, 0, 0);
  sound.play();  //(3)
  noStroke();
  fill(#E8F085);
  circle(220, 230, 250);
  scaleImage(img2, 150, 150, 0.7) ;
}
