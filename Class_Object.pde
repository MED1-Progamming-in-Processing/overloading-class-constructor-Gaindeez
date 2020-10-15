class Object {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int r = int(random(0,255));
  int g = int(random(0,255));
  int b = int(random(0,255));
  boolean shape = true;
  color col;

  //First Constructor
  Object(float x, float y, float xSpeed, float ySpeed, boolean shape) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.shape = shape;
  }
  
  //Second Constructor
  Object(float x, float y, float xSpeed, float ySpeed, boolean shape, color col) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.shape = shape;
    this.col = col;
  }

  //Movement of shapes
  void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }
  }
  
  void display(){
    //Switch color
    fill(r,b,g);
    if(col != 0){
    fill(col);
    }
   
   //Display shapes
    if(shape){
    ellipse(x, y, 20, 20); 
    } else {
    rect(x, y, 20, 20); 
    }
  }
}
