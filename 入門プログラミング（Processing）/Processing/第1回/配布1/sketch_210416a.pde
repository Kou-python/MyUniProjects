void setup() {
  size(480, 480);
  background(255, 255, 255);
  rectMode(CORNERS);
}

void draw() {
  rect(50, 50, random(width), random(height));
}
