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

int x=30;
int y=30;

void setup() {
  size(500, 500);
  background(255, 255, 255);
}

int d=4;
int b=8;


void draw() {
  background(255, 255, 255);
  s();
  x=x+d;
  y=y+b;

  if (x<=0) {
    d=d+3;
  }

  if (x>=500) {
    d=d-3;
  }  
  if (y<=0) {
    b=+3;
  }
  if (y>=500) {
    b=b-3;
  }
}
