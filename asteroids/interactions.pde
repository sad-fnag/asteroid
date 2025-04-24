//interactions tab


void mouseReleased() {
  if (mode==intro) {
    introclicks();
  } else if (mode == game) {
    gameclicks();
  } else if (mode == gameover) {
    gameoverclicks();
  }
}




void keyPressed() {
  if (keyCode == UP) up = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  if (key == ' ') space = true;
}


void keyReleased() {
  if (keyCode == UP) up = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
  if (key == ' ') space = false;
}
