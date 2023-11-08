void setup() {
  background(255, 255, 255);
  size(500, 500);
  frameRate(2);
}

void en() {
  fill(0, 0, 255);
  circle(x, y, 60);
}
int x=420;
int y=240;
int c=0;

void draw() {
  background(255, 255, 255);
  y=240;
  c=c%4;
  c=c+1;
  x=540-c*120;
  en();
}
