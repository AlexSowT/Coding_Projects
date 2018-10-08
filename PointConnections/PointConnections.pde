Points[] points = new Points[100];


void setup() {
  fullScreen(P2D);
  //size(300, 300);
  colorMode(HSB);
  strokeWeight(8);
  for (int i = 0; i < points.length; i++) {
    points[i] = new Points();
  }
}



void draw() {
  translate(width/2, height/2);
  background(230);
  updatePoints();
  drawLine();
  noFill();
  stroke(0);
  rect(50, width-100, 50, height-100);
  save("Header1.png");
}

void updatePoints() {
  for (int i = 0; i < points.length; i++) {  
    points[i].show();
    points[i].update();
  }
}

void drawLine() {
  pushMatrix();
  strokeWeight(2);
  for (int i = 0; i < points.length; i++) {  
    for (int j = 0; j < points.length; j++) {
      float a = map(points[i].pos.x, -width/2, width/2, -400, 400);
      float b = map(points[i].pos.y, -width/2, width/2, -400, 400);

      stroke(dist(a, b, 0, 0), 255, 255);

      if (dist(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y) < 120) {
        line(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y);
      }
    }
  }
  popMatrix();
}
