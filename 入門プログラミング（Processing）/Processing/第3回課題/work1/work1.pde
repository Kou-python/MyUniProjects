void setup() {
  size(720, 480);
  background(255, 255, 255);
  line(240, 0, 240, 480);
  line(480, 0, 480, 480);
  line(0, 240, 720, 240);
  int x, y;

  // ①NE21-1084B
  x = 120;
  y = 120;
 
   //face;
  fill(#F0DB72);
  rect(x-70,y-70,100,100);
  noFill();
  
  //ear;
  fill(0,0,0);
  rect(x-90,y-90,30,50);
  
  rect(x+15,y-90,30,50);
  noFill();
  
  //eye;
  fill(#3753ED);
  rect(x-50,y-50,5,5);
  rect(x-10,y-50,5,5);
  noFill();
  
  //mouth;
  fill(#5A3A09);
  rect(x-10,y+5,50,25);
  noFill();
  
  //mouse-mouse;
  fill(#1C1101);
  rect(x+20,y+5,20,10);
  


  // ②川井　勇輝 (NE21-1094J)
  x = 360;
  y = 120;
fill(220,220,220);//ne21-1094 kawai
  triangle(x-60,y-90,x-60,y-30,x-20,y-50); 
  triangle(x+60,y-90,x+20,y-60,x+60,y-30);
 fill(255,153,204);
  triangle(x-55,y-75,x-55,y-40,x-30,y-50);
  triangle(x+20,y-50,x+55,y-75,x+55,y-40);
 fill(220,220,220);
  circle(x,y,140);
 fill(255,255,255);
  circle(x+30,y-10,30);
  circle(x-30,y-10,30);
 fill(0,0,0);
  circle(x-30,y-10,15);
  circle(x+30,y-10,15);
 fill(255,153,153);
  triangle(x-10,y+10,x+10,y+10,x,y+30);
  fill(255,204,204);
  ellipse(x,y+50,30,10);
  triangle(x-40,y+20,x-90,y+10,x-90,y+10);
  triangle(x-40,y+30,x-90,y+30,x-90,y+30);
  triangle(x-40,y+40,x-90,y+50,x-90,y+50);
  triangle(x+20,y+20,x+90,y+10,x+90,y+10);
  triangle(x+20,y+30,x+90,y+30,x+90,y+30);
  triangle(x+20,y+40,x+90,y+50,x+90,y+50);

  // ③NE21-1104F 武次　玲
  x = 480;
  y = 0;
  
  // noStroke();
  fill(100,70,60);
  triangle(x+120,y+70,x+150,y+50,x+153,y+87);
 fill(100,70,60);
  triangle(x+153,y+87,x+170,y+120,x+190,y+92);
  fill(100,70,60);
  triangle(x+170,y+120,x+153,y+153,x+190,y+148);
  fill(100,70,60);
  triangle(x+153,y+153,x+120,y+170,x+153,y+190);
  fill(100,70,60);
  triangle(x+120,y+70,x+95,y+53,x+90,y+80);
  fill(100,70,60);
  triangle(x+90,y+80,x+70,y+120,x+50,y+92);
  fill(100,70,60);
  triangle(x+70,y+120,x+87,y+153,x+50,y+148);
  fill(100,70,60);
  triangle(x+87,y+153,x+120,y+170,x+87,y+190);
  stroke(0,0,0);
 fill(255,200,100);
  circle(x+90,y+90,40);
  fill(255,200,100);
  circle(x+150,y+90,40);
  noStroke();
  fill(255,255,255);
  circle(x+90,y+90,30);
  fill(255,255,255);
  circle(x+150,y+90,30);
  stroke(0,0,0);
  fill(255,200,100);
  circle(x+120,y+120,100);
  stroke(0,0,0);
  fill(255,255,255);
  circle(x+95,y+145,50);
  fill(255,255,255);
  circle(x+145,y+145,50);
  circle(x+105,y+105,20);
 
  circle(x+135,y+105,20);
 noStroke();
  fill(0,0,0);
  circle(x+106,y+106,10);
  fill(0,0,0);
  circle(x+134,y+106,10);
 fill(100,70,60);
  triangle(x+105,y+120,x+135,y+120,x+120,y+145);
  
//  ④平川　貴啓 (NE21-1074F)
x=120;
y=400;
  noStroke();fill(200,0,255);rect(x-90,y-110,160,160);fill(255,255,255);
 circle(x-50,y-50,70);ellipse(x+20,y-50,70,70);fill(240,0,0);
 triangle(x-20,y-20,x,y-10,x-20,y)
 ;fill(0,0,0);rect(x-50,y-50,5,5);rect(x+20,y-50,5,5);stroke(0,0,0);
 line(x-30,y+30,x,y+30);
 
 // ⑤武次　玲 (NE21-1104F)
 x=400;
 y=400;
 fill(240,200,200);
circle(x-30,y-30,85);

fill(0,0,0);
circle(x-75,y-75,40);
circle(x+15,y-75,40);

fill(255,255,255);
ellipse(x-45,y-35,10,20);
ellipse(x-10,y-36,10,20);

fill(0,0,0);
circle(x-45,y-36,5);
circle(x-10,y-36,5);
arc(x-20,y,40,0,HALF_PI,PI);

//⑥余り（笹川高聖）
  x = 600;
  y = 400;
 
   //face;
  fill(#F0DB72);
  rect(x-70,y-70,100,100);
  noFill();
  
  //ear;
  fill(0,0,0);
  rect(x-90,y-90,30,50);
  
  rect(x+15,y-90,30,50);
  noFill();
  
  //eye;
  fill(#3753ED);
  rect(x-50,y-50,5,5);
  rect(x-10,y-50,5,5);
  noFill();
  
  //mouth;
  fill(#5A3A09);
  rect(x-10,y+5,50,25);
  noFill();
  
  //mouse-mouse;
  fill(#1C1101);
  rect(x+20,y+5,20,10);

}
