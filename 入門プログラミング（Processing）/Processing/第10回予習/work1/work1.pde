int x = 0;
int y = 200;

void setup() {
  size(480, 480);
}

void draw() {
  background(255, 255, 255);

  if (circle==false) {
    x = x + 3;
    noStroke();
    fill(0, 255, 255);
    rect(200, 300, 80, 50);
  } else {
    x=x+6;
    fill(0, 0, 0);
    noStroke();
    rect(200, 300, 80, 50);
  }


  x = x % 480;
  noStroke();
  fill(0, 0, 255);
  circle(x, y, 50);



  if (mousePressed) {
  }
}

int a =0;
boolean circle=false;
void mousePressed() {
  if (mouseX >= 200 && mouseX < 280 && mouseY >= 300 && mouseY < 350) {
    a=a+1;
    if (a%2==0) {
      circle=false;
    } else {
      circle=true;
    }


    println("マウスの位置は長方形の中！");
    println(a);
  }
}
