PImage picture;  //(1) //<>//

import processing.sound.*;

SoundFile sound;  //(1)


int x=800;
int y=800;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  sound = new SoundFile(this, "jump06.mp3");  //(2)
  picture = loadImage("MS251_imayaraduituyaru_TP_V4.jpg");  //(2)
}

void mousePressed() {
  x=mouseX;
  y=mouseY;
  sound.play();  //(3)
}

void draw() {
  background(255, 255, 255);
  image(picture, x-90, y-90, picture.width*0.2, picture.height*0.2);  //(3)
  x = x + 1;
}
