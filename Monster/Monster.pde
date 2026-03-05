// Jack Feller
// Monday, March, 2
// Monster animation

int x;
//float scale;
//float a;

void setup() {
  size(600, 600, P2D);
  x = 0;
  //scale = 0.1;
}

void draw() {
  background (255);
  fill(255);
  
  gremlin(x, 300); //scale, a);
  
  
  
  x = x + 10;
 // a = a + 2;
  //scale = scale + 0.01;
  if (x > 1000) {
    x = -200; 
    //scale = 0.1;
  }
  
  //gremlin(100, 100, 0.5, 0);
}

void gremlin (int x, int y) { //float s, float angle) {
  
  pushMatrix();
  translate(x, y);
 // rotate( radians(angle) );
  //scale(s);
 stroke(0);
 strokeWeight(1.5);
  ellipse(0, 45, 225, 225);
  fill(185, 150, 103);
  quad(-90, -60, -45, -150, -140, -200, -230, -190);
  fill(193, 163, 123);
  quad(-230, -190, -240, -115, -230, -105, -155, -120);
   fill(185, 150, 103);
  quad(90, -60, 45, -150, 140, -200, 230, -190);
  fill(193, 163, 123);
  quad(230, -190, 240, -115, 230, -105, 155, -120);
  fill(255);
  ellipse(0, -100, 220, 150);
  fill(149, 84, 5);
  ellipse(-70, 175, 100, 100);
  ellipse(70, 175, 100, 100);
  fill(121, 87, 17);
  ellipse(-100, 0, 80, 80);
   ellipse(100, 0, 80, 80);
   //eyes 
   fill(255);
   ellipse(-50, -100, 50, 30);
   ellipse(50, -100, 50, 30);
    fill(121, 87, 17);
   ellipse(55, -100, 30, 30);
   ellipse(-45, -100, 30, 30);
   fill(0);
   ellipse(60, -100, 15, 15);
   ellipse(-40, -100, 15, 15);
   fill(240, 196, 109);
   ellipse(0, -65, 60, 40);
   line(-30, -65, 30, -65);


  popMatrix();
}
