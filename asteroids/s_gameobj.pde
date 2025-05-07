class gameobj {
  PVector location;
  PVector velocity;

  int lives;

  float d;

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
  
  void wraparound(float buffer) {
  if (location.x < -buffer) location.x = width + buffer;
  if (location.x > width + buffer) location.x = -buffer;
  if (location.y < -buffer) location.y = height + buffer;
  if (location.y > height + buffer) location.y = -buffer;
}

}
