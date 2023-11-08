void s() {
  fill(a, c, b);
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
int a;
int b;
int c;
void setup() {
  size(500, 500);
  background(255, 255, 255);

  x=40;
  y=40;
  a=0;
  b=0;
  c=255;
  s();


  x=y=80;
  a=0;
  b=255;
  c=0;
  s();


  x=y=120;
  a=255;
  b=0;
  c=0;
  s();


  x=y=160;
  a=b=255;
  c=0;
  s();


  x=y=200;
  a=c=255;
  b=0;
  s();


  x=y=240;
  b=c=255;
  a=0;
  s();


  x=y=280;
  a=b=100;
  c=10;
  s();


  x=y=320;
  a=c=100;
  b=10;
  s();


  x=y=360;
  b=c=100;
  a=10;
  s();


  x=y=400;
  a=b=44;
  c=200;
  s();
}    
