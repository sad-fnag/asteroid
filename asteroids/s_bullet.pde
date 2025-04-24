class bullet extends gameobj {

  int timer;

  bullet() {
    super(p1.location.copy(), p1.direction.copy());
    velocity.setMag(10);
    timer = 60;
  }

  void show() {
    fill(0);
    stroke(255);
    strokeWeight(2);
    circle(location.x, location.y, 5);
  }

  void act() {
    location.add(velocity);
    timer--;
    if(timer == 0) lives = 0;
    wraparound();
  }


}
