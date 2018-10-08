class Points{
  PVector pos; 
  PVector vel;
  int speed = 2;
  
  Points(){
    pos = new PVector(random(-400,400), random(-400,400));
    vel = new PVector(random(-speed,speed),random(-speed,speed));
  }


  void show(){
    strokeWeight(8);
    stroke(0);
    point(pos.x,pos.y);
  }

  void update(){
    pos.add(vel);
    
    if(pos.x < -400 || pos.x > 400 || pos.y <= -400 || pos.y>400){
      vel.mult(-1);
    }
  
  }

}
