// Jack Feller
// Tuesday Feb 24
// Animation #2

int x;

void setup () {
  size(600, 600);
  x = -100;
}

void draw() {
  background(255);
  strokeWeight(5);
  fill(0);
  ellipse(300, 300, x, 200);
  x = x + 1;
  if(x>300) {
    x=-300;
  }
  
  
}
