
Matrix matrix;

void setup() {
  size(800, 500);
  matrix=new Matrix();
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(0);
  fill(188);
  matrix.update();
  matrix.display();
}

