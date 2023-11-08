int x = 20;
int y=0;
int step = 0;

void setup() {
  size(480, 480);
  background(255, 255, 255);
  frameRate(5);
}

void draw() {
  x = x + 50;
  step=step%3;
  step=step+1;
  //This is same as"step=step%3+1;"
  y=step*50+50;
  rect(x, y, 20, 20);
}
