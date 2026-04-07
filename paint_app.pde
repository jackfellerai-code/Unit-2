// Paint App
// March 30, 26
// Jack Feller

//pallette of colors
color ash = #BCABAE;
color onyx = #0F0F0F;
color graphite = #2D2E2E;
color grey = #716969;
color white = #FBFBFB;

//variables for color section

color selectedColor;

int toggle;

void setup() {
  size(800, 600);
  stroke(white);
  strokeWeight(3);
  selectedColor = grey;
  
  toggle = 1;
}

void draw() {

 // tactile(700, 500, 100);
 // fill(onyx);
  //circle(700, 500, 100);
  
  tactile(350, 500, 100);
  fill(graphite);
  rect(350, 500, 200, 500);
 // circle(400, 500, 100);

  tactile(100, 500, 100);
  fill(grey);
  rect(100, 500, 200, 500);
 // circle(100, 500, 100);
  
  stroke(white);
 fill(selectedColor);
  square(200, 25, 400);
  
  if (toggle > 0) {
    guidelines();
  }
}
  


void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
     stroke(ash);
    } else {
      stroke(white);
    }
}

void mouseReleased() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY <1000) {
 toggle = toggle * -1;
  }
}

void guidelines() {
  fill(ash);
}



 // if (dist(700, 500, mouseX, mouseY) < 50) {
   // selectedColor = onyx;
  //}  
    
 //if (dist(400, 500, mouseX, mouseY) < 50) {
   // selectedColor = graphite;
  //}  
    
//if (dist(100, 500, mouseX, mouseY) < 50) {
 //   selectedColor = grey;
//  }  
