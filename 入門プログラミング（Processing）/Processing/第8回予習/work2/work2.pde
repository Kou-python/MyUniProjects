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

void setup() {
  size(500, 500);
  background(255, 255, 255);
}

void draw() {
  background(255, 255, 255);
  s();
  keyPressed();
}

void keyPressed() {
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
}
