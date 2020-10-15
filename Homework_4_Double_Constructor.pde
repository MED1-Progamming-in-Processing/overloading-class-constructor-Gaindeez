Object[] circles, rectangles;
float travelSpeed = 3;
boolean click;


void setup() {
  size(1000, 1000);
  noStroke();
  
  //Create array for both objects
  circles = new Object[500];
  rectangles = new Object[500];
  
  //Create circle and rectangle objects
  delay(500);
  for(int i = 0; i < circles.length; i++){
  circles[i] = new Object(random(-width, width), random(-height, height), random(-travelSpeed, travelSpeed), random(-travelSpeed, travelSpeed), true);
  rectangles[i] = new Object(random(-width, width), random(-height, height), random(-travelSpeed, travelSpeed), random(-travelSpeed, travelSpeed), false, #E8E46E);
  println(i);
  }
}

void draw() {
background(200);

    //Switch between circles and rectangles
    if(click){
    for(int i = 0; i < circles.length; i++){
    circles[i].move();
    circles[i].display();
    }
    } else {
    for(int i = 0; i < circles.length; i++){
    rectangles[i].move();
    rectangles[i].display();
    }
  }
}

void mousePressed() {
  //Simple boolean switch
  click = ! click;
}
