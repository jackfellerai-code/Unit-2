// Jack Feller
// Friday, Feb, 27
// Monster animation

int compassX;

void setup(); {
  size(600, 600);

}

void draw(); {
  background(255);
  campass();
  compassX = compassX + 5;
  if (compassX > 1000) {
    compassX = -200;
  
}

void compass(int x, int y) {
  pushMatrix(); // begins transformations 
  translate(x, y);
}

popMatrix(); // ends transformations
