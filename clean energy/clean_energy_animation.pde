// Animation
// Jack Feller
// March, 6, 26

int x;
int angle;

void setup() {
  size(600, 600, P2D);
  x = 0;
  angle = 0;
}

void draw() {
  println(mouseX, 385, mouseY, 155);
  background(29, 145, 206);

  //drawShapes(x, 150);
  solar(0, 300);
  solar(300, 300);
  turbine(385, 155, angle);
  //turbine(100, 300, angle);

 // noStroke();
 // fill(255, 0, 0, 50 );
//  circle(300, 300, 300);

  angle = angle + 1;

  x = x + 5;
  if (x > 1000);
  {
    x = -200;
  }
}



void solar (int x, int y) {
  pushMatrix();
  translate(x, y);

  stroke(0);
  fill(255);
  quad(-200, -10, 20, 270, 270, 110, 200, 35);



  popMatrix();
}

void turbine (int x, int y, int a) {
  pushMatrix();
  translate(x, y);

 quad(-1, 0, 4, 0, -5, 120, 4, 122);

  rotate( radians(a));
  circle(0, 0, 10);
  line(0, 0, 100, 100);
  line(0, 0, -100, 100);
  line(0, 0, 0, -100);

  //quad(82, -140, 65, -136, 25, -100, 27, -90);
 // quad(82, -150, 88, -169, 70, -210, 65, -205);

  popMatrix();
}







//void drawShapes (int x, int y) {

//  pushMatrix();
//  translate(x, y);
//  solar(300, 300);





//  popMatrix();
//}
