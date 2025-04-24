class gameobj {
  PVector location;
  PVector velocity;

  int lives;


  gameobj(float lx, float ly, float vx, float vy ) {
    location = new PVector (lx, ly);
    velocity = new PVector (vx, vy);
    lives = 1;
  }

  gameobj(PVector l, PVector v) {
    location = l;
    velocity = v;
    lives = 1;
  }
  
   gameobj(PVector l, PVector v, int lv) {
    location = l;
    velocity = v;
    lives = lv;
  }

  void act() {
  }

  void show() {
  }
  
    void wraparound() {

    if (location.x < -20) location.x = 1020;
    if (location.x > 1020) location.x =  -20;
    if (location.y < -20) location.y = 820;
    if (location.y > 820) location.y = -20;
  }
}
