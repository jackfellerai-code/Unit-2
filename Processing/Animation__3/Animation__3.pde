// Jack Feller
// Tuesday Feb 24
// Animation #3

int x;

void setup () {
  size(600, 600);
  x = 0;
}

void draw() {
  background(255);
  strokeWeight(5);
  fill(x, 255, 255);
  ellipse(x, 300, 100, x);
  x = x + 4;
  if(x>900) {
    x=0;
  }
  
  
}
    
