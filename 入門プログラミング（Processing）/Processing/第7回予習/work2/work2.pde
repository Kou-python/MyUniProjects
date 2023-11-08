int x=5000;
int y=5000;

void mousePressed() {
  x=mouseX; 
  y=mouseY;
}

void s(int sx, int sy) {
  sx=x;
  sy=y;
  fill(sx, sy, sx/2+30);
  triangle(sx, sy, sx+20, sy-20, sx+40, sy);
  rect(sx+5, sy, 30, 30);
  ellipse(sx+10, sy+30, 10, 30);
  ellipse(sx+20, sy+30, 10, 30);
  ellipse(sx+30, sy+30, 10, 30);
  fill(255, 255, 255);
  ellipse(sx+15, sy+10, 10, 15);
  ellipse(sx+25, sy+10, 10, 15);
  fill(0, 0, 0);
  ellipse(sx+15, sy+10, 5, 5);
  ellipse(sx+25, sy+10, 5, 5);
}

void setup() {
  size(480, 480);
  background(255, 255, 255);
}

void draw() {
  s(x, y);
}
