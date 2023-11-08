void setup() {
  size(500, 500);
}

float x; 
int y;
int n;
float ave;
float e;

void draw() {
}

void mousePressed() {
  n=n+1;
  y=mouseY;
  e=e+mouseY;

  ave=e/n;


  println(n);
  println(y);
  println(ave);
  println("");
}
