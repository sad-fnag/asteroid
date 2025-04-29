class asteroid extends gameobj {




  asteroid() {

    super(random(width), random(height), 1, 1);
    velocity.setMag(random(1, 3));
    velocity.rotate(random(TWO_PI));
    lives = 3;
  }
  
  void show(){
  fill(0);
  stroke(255);
  strokeWeight(3);
  circle(location.x, location.y, lives*50);
  line(location.x, location.y, location.x+lives*50/2, location.y);
  }
  
  void act(){
    location.add(velocity);
    wraparound(70);
  }
  
  
}
