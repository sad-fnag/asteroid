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
  
    void wraparound( float radius) {

     if (location.x < -radius) location.x = width + radius;
  if (location.x > width + radius) location.x = -radius;
  if (location.y < -radius) location.y = height + radius;
  if (location.y > height + radius) location.y = -radius;
  }
}
