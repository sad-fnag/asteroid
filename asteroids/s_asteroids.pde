class asteroid extends gameobj {

  float rspeed, angle;
  ArrayList<PVector> shape;

  // Default constructor
  asteroid() {
    this(new PVector(random(width), random(height)), 3);
  }

  // Constructor for splits
  asteroid(PVector loc, int newLives) {
    super(loc.x, loc.y, 1, 1);
    velocity = PVector.random2D().mult(random(1, 3));
    lives = newLives;
    d = lives * 30;
    rspeed = random(1) < 0.5 ? random(-2, -0.5) : random(0.5, 2); // no zero spin
    angle = 0;
    shape = generateShape();
  }

  // Generate a jagged polygon
  ArrayList<PVector> generateShape() {
    ArrayList<PVector> points = new ArrayList<PVector>();
    int sides = int(random(7, 12));
    for (int i = 0; i < sides; i++) {
      float a = map(i, 0, sides, 0, TWO_PI);
      float radiusOffset = random(0.6, 1.2); // jaggedness
      float r = (d / 2) * radiusOffset;
      float x = cos(a) * r;
      float y = sin(a) * r;
      points.add(new PVector(x, y));
    }
    return points;
  }

  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(angle);
    stroke(255);
    strokeWeight(2);
    noFill();
    beginShape();
    for (PVector p : shape) {
      vertex(p.x, p.y);
    }
    endShape(CLOSE);
    popMatrix();
  }

  void act() {
    location.add(velocity);
    angle += radians(rspeed);
    wraparound(d);
    collision();
  }

  void collision() {
    int i = 0;
    while (i < obj.size()) {
      gameobj currentobj = obj.get(i);
      if (currentobj instanceof bullet) {
        if (dist(location.x, location.y, currentobj.location.x, currentobj.location.y) < d/2 + currentobj.d/2) {

          // Split into smaller asteroids if not tiny
          if (lives > 1) {
            for (int j = 0; j < 2; j++) {
              obj.add(new asteroid(location.copy(), lives - 1));
            }
          }

          lives = 0;
          currentobj.lives = 0;
        }
      }
      i++;
    }
  }
}
