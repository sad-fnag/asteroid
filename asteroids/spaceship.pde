class spaceship extends gameobj {

  PVector direction;
  int cd;

  spaceship() {
    super(width/2, height/2, 0, 0);
    direction = new PVector(1, 0);
    cd = 0;
  }


  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    drawship();
    popMatrix();
  }

  void drawship() {
    fill(0);
    stroke(255);
    strokeWeight(2);
    triangle(-10, -10, -10, 10, 30, 0);
    triangle(-10, -10, -10, -20, 0, -8);
    triangle(-10, -10, -10, -20, 5, -7);
    triangle(-10, 10, -10, 20, 5, 7);
    rect(-15, -10, 5, 20);

    circle(0, 0, 10);
  }




  void act() {
    move();
    shoot();
    collision();
    wraparound(20);
  }


  void move() {
    location.add(velocity);
  
    
    
    if (up) velocity.add(direction);
    if (down) velocity.sub(direction);
    
    
    if (!down) {
      velocity.mult(0.97);
    }
  
    
    if (left) direction.rotate(-radians(5));
    if (right) direction.rotate(radians(5));
    
    velocity.limit(5);
  
      
    
  }

  void shoot() {
    cd--;
    if (space && cd <= 0) {
      obj.add( new bullet() );
      cd = 20;
    }
  }

  void collision() {
  }


}
