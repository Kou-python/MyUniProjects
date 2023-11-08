void dog() {
  //face;
  fill(#F0DB72);
  rect(x-70, y-70, 100, 100);
  noFill();

  //ear;
  fill(0, 0, 0);
  rect(x-90, y-90, 30, 50);

  rect(x+15, y-90, 30, 50);
  noFill();

  //eye;
  fill(#3753ED);
  rect(x-50, y-50, 5, 5);
  rect(x-10, y-50, 5, 5);
  noFill();

  //mouth;
  fill(#5A3A09);
  rect(x-10, y+5, 50, 25);
  noFill();

  //mouse-mouse;
  fill(#1C1101);
  rect(x+20, y+5, 20, 10);
}

void setup() {
  size(480, 480);
  background(255, 255, 255);  

  dog();

  x =120;
  y =120;
  dog();

  x=350;
  y=120;
  dog();

  x=120;
  y=350;
  dog();
}
int x = 120;
int y = 120;
