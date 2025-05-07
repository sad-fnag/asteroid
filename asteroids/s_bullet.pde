class bullet extends gameobj {

  int timer;

  bullet() {
    super(p1.location.copy(), p1.direction.copy());
    velocity.setMag(7);
    timer = 120;
    d = 5;
  }

  void show() {
    fill(0);
    stroke(255);
    strokeWeight(2);
    circle(location.x, location.y, d);
  }

  void act() {
    location.add(velocity);
    timer--;
    if (timer == 0) lives = 0;
    wraparound(5);
  }

 
}
