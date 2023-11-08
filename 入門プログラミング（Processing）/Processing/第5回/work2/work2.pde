void setup() {
  size(480, 480);
  background(255, 255, 255);
}

int x;
int y;

void mousePressed() {
  x=mouseX; 
  y=mouseY;
}

void s() {
  fill(r, g, r/2);
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

int r;
int g;

void draw() {
  r=mouseX;
  g=mouseY;
  s();
}
