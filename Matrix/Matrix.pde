class Matrix {
  PVector location;
  PVector dir;
  float r;
  float temp_r;
  float  [] matrix_r;
  PVector[] matrix_location;
  int x_num;
  int y_num;
  int count;
  PVector mouse;
  int interval=14;

  Matrix() {
    x_num=int(width/interval)+1;
    y_num=int(height/interval)+1;
    matrix_r=new float [x_num*y_num];
    matrix_location=new PVector [x_num*y_num];
  }
  void update() {
    count=0;
    for (int y=0; y<=height; y+=interval) {
      for (int x=0; x<=width; x+=interval) {
        location =new PVector(x, y);
        PVector mouse = new PVector(mouseX, mouseY);
        PVector dir =PVector.sub(mouse, location);
        float temp_r=dir.mag()/15;
        float r=constrain(temp_r, 1, 12);
        matrix_r[count]=r;
        matrix_location[count]=location;
        count=count+1;
      }
    }
  }

  void display() {
    for (int j=0; j< (count); j++) {
      ellipse(matrix_location[j].x, matrix_location[j].y, matrix_r[j], matrix_r[j]);
    }
  }
}

