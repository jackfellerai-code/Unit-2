// Jack Feller
// Monday Feb 23
// Animation

// Built in vairiables:
// - mouseX, mouseY: these are the coordinates for your mouse pointer

// Using void setup, and void draw, turns on animation

//define your own values
int x;

void setup () {
  size(600, 600);
  x = 0; //set the starting value
} // End of setup

void draw() {
  background(255);
  strokeWeight(5);
  //fill(mouseX);
  ellipse(x, 300, 200, 200);
  x = x + 5;
  if(x>700) {
    x=-100;
  }
    
  
  //line(300, 300, mouseX, mouseY);
} // End of draw
// This activates animation
