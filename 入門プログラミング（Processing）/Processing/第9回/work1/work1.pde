PImage img1;//door //<>// //<>// //<>//
PImage img2;
PImage img3;//key
PImage img4;//table

boolean key = false;
int room=2;
boolean door = false;

void setup() {
  background(255, 255, 255);
  size(500, 500);
  img1=loadImage("door_close.png");
  img2=loadImage("door_open.png");
  img3=loadImage("key.png");
  img4=loadImage("table.png");
  //
  room1();
}

void scaleImage(PImage img, int x, int y, float scale) {
  image(img, x, y, img.width*scale, img.height*scale);
}

void  room1() {
  background(255, 255, 255);
  fill(#F7E7D9);
  rect(0, 50, 450, 300); 
  quad(450, 50, 500, 0, 500, 500, 450, 350);
  scaleImage(img4, 270, 300, 0.25);
  fill(0, 0, 0);
  triangle(10, 200, 40, 170, 40, 230);
}

void room2() {
  background(255, 255, 255);
  fill(#F7E7D9);
  rect(50, 50, 450, 300); 
  quad(0, 0, 50, 50, 50, 350, 0, 500);
  fill(0, 0, 0);
  triangle(490, 200, 460, 170, 460, 230);
  if (door == false) {
    scaleImage(img1, 60, 140, 0.3);
  }
  if (door == true) {
    scaleImage(img2, -25, 155, 0.3);
  }
}

//

void draw() {
  if (room==1) {
    if (key==false) {
      room1();
      scaleImage(img3, 300, 305, 0.05);
    } else if (key==true) {
      room1();
    }
  }

  if (room==2) {
    room2();
  }
}

void mousePressed() {
  ////
  if (room==1) {
    if (mouseX>250&&mouseX<450) {
      key = true;
    } else if (mouseX<50) {
      room=2;
    }
  }

  ////
  if (room==2) {
    if (mouseX>450) {
      room=1;
    } 
    if (mouseX>50&&mouseX<200) {
      if (key) {
        door = true;
      }
    }
  }
  println(room);
}
