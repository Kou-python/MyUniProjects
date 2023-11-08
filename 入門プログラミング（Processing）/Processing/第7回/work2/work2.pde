int right;
int center;
int left;

void s(int x, int y, int r, int g, int b) {
  fill(r, g, b);
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

void setup() {
  size(480, 480);
  background(255, 255, 255);
}

void draw() {
  background(255,255,255);
  s(60, left+300, mouseX, mouseX/2, mouseY*3);
  s(180, center+300, mouseX/4, mouseX*2, mouseY/3);
  s(300, right+300, mouseX/2, mouseX/2, mouseY/3);
  right=right-3;
  center=center-1;
  left=left-2;
  right=right%480;
  center=center%480;
  left=left%480;
}
