float value, x, y;

void setup(){
  size(400,400);
  background(255,255,255);
}

void mousePressed(){
  fill(0,0,0);
  text(int(value)+50, x, y);
}

void draw(){
value=random(50);
 x=random(400);
 y=random(400);
}
