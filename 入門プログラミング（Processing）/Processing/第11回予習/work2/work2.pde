int st=millis();

void setup() {
  size(300, 300);
  background(0, 0, 0);
}
void draw() {
  background(0);
    text(float(millis()/1000-st), 200, 240);

}

void mousePressed() {
  background(0, 0, 0);
  st=millis()/1000;
}
