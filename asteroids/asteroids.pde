import java.util.ArrayList;


PFont overthere;

int mode;
int tsize;
int lives;
int score;

final int intro = 0;
final int game = 1;
final int gameover = 2;
final int pause = 3;

int lastLives = 3;      // initial spaceship lives
int flashTimer = 0;     // timer for flash effect


PVector location;
PVector velocity;
float x, y, d;
float vx, vy; //target velocity

//keyboard====s
boolean up, down, left, right, space;

//gameobject
spaceship p1;


//list of bullet
ArrayList <gameobj> obj;

void setup() {
  size(1000, 800);
  mode = intro;
  textAlign(CENTER, CENTER);

  obj = new ArrayList();

  p1 = new spaceship();

  obj.add(new asteroid());
  obj.add(new asteroid());
  obj.add(new asteroid());
  obj.add(new asteroid());
  obj.add(new asteroid());

  obj.add(p1);

  //======================================================
  overthere = createFont("Over There.ttf", 100);
  tsize = 70;
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == pause) {
    pause();
  } else {
    println("error:mode =" + mode);
  }
}
