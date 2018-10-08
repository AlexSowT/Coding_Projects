float lengthW;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  lengthW = width-20;
}

void draw() {
  background(51);
  noFill();
  translate(width/2, height/2);
  colorMode(HSB);
  strokeWeight(4);

  drawRect(lengthW);
}

void drawRect(float size) {
  //Sets the fillCol value to be a numver between 160. Not sure why 160 works here, I am using the map command incorrectly. 
  float fillCol = map(dist(0, 0, size, size), 0, width, 0, 160);
  
  //Mess with this value to change the pattern the squares make.
  float k = 0.3;
  float newSize = 0;

  stroke(fillCol, 255,255);
  rect(0, 0, size-10, size-10);
  //Change this variable to edit the space inbetween each square.
  newSize = size-5;
  rotate(sin(k));

  //Change this to change the amount each rect rotates.
  k += 0.1;
  if (size > 2) {
    drawRect(newSize);
  }
}
