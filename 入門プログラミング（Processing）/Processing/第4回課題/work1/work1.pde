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

int x;
int y;
void setup() {
  size(500, 500);
  background(255, 255, 255);

  x=40;
  y=40;
  s();
  x=y=80;
  s();
  x=y=120;
  s();
  x=y=160;
  s();
  x=y=200;
  s();
  x=y=240;
  s();
  x=y=280;
  s();
  x=y=320;
  s();
  x=y=360;
  s();
  x=y=400;
  s();
}    
