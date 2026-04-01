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


void setup() {
  size(800, 600);
  stroke(white);
  strokeWeight(2);
  selectedColor = grey;
}

void draw() {
  background(ash);
  
  fill(onyx);
  circle(700, 500, 100);
  
  fill(graphite);
  circle(400, 500, 100);
  
  fill(grey);
  circle(100, 500, 100);
  
  fill(selectedColor);
  square(200, 25, 400);
  
}

void mouseReleased() {
  if (dist(700, 500, mouseX, mouseY) < 50) {
    selectedColor = onyx;
  }  
    
 if (dist(400, 500, mouseX, mouseY) < 50) {
    selectedColor = graphite;
  }  
    
if (dist(100, 500, mouseX, mouseY) < 50) {
    selectedColor = grey;
  }  
}
