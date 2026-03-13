// Animation
// Jack Feller
// March, 6, 26

int x;
int angle;
float c = 200;
float a = 200;

void setup() {
  size(600, 600, P2D);
  x = 0;
  angle = 0;
  c = 1;
}

void draw() {
  println(mouseX, mouseY);
  background(29, 145, 206);

  fill(77, 147, 16);
  quad(600, 360, 600, 600, 0, 600, 0, 330);

 c = c + 1.5;
 if (c > width + 150) c = -150;

cloud(150, 150, c, false);
cloud(75, 200, c, false);
cloud(40, 225, c, false);

 a = a + 0.5;
 if (a > width + 50) a = -50;
cloud(0, 20, a, false);
cloud(0, 60, a, false);
cloud(0, 530, a, true);   
cloud(0, 580, a, true);


 turbine(230, 130, angle, 1.3);
  solar(10, 275);
  solar(300, 300);
  turbine(385, 155, angle, 1);
  turbine(60, 192, angle, 0.6);
 
  //turbine(100, 300, angle);
  stroke(0);
  line(145, 347, 155, 480);
  line(255, 487, 257, 525);

  // noStroke();
  // fill(255, 0, 0, 50 );
  //  circle(300, 300, 300);

  angle = angle + 1;

  x = x + 2;
  if (x > 700);
  {
    x = -300;
  }
}



void solar (int x, int y) {
  pushMatrix();
  translate(x, y);

  noStroke();
  fill(0, 0, 0, 50);
  quad(11, 260, -35, 285, -235, 40, -145, 55);

  stroke(0);
  fill(200, 200, 200);
  quad(-200, -10, 20, 270, 270, 110, 200, 35);

  stroke(3);
  line(-70, 155, 240, 79);
  line(-145, 60, 220, 55);
  line(-70, 5, 110, 212);
  line(42, 17, 175, 170);


  popMatrix();
}

void turbine (int x, int y, int a, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  fill(0);
  quad(-3, 0, 3, 0, 6, 168, -7, 167);

  rotate( radians(a));
  circle(0, 0, 10);

  quad(0, 0, -30, 10, -70, 70, -60, 75);
  quad(0, 0, 20, -25, 20, -95, 5, -95);
  quad(0, 0, 5, 20, 50, 90, 70, 80);


  // quad(82, -150, 88, -169, 70, -210, 65, -205);

  popMatrix();
}

void cloud(int x, int y, float c, boolean shadow) {
  pushMatrix();
  translate(x+c, y);
  if (shadow) {
    fill(0, 0, 0, 60);  // dark semi-transparent shadow colour
  } else {
    fill(255);
  }
  noStroke();
  circle(0, 0, 60);
  circle(10, 20, 60);
  circle(10, -25, 60);
  circle(25, 0, 60);
  circle(45, -35, 60);
  circle(80, -7, 60);
  circle(45, 35, 60);
  circle(70, 10, 60);
  popMatrix();
}







//void drawShapes (int x, int y) {

//  pushMatrix();
//  translate(x, y);
//  solar(300, 300);





//  popMatrix();
//}
