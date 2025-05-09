void game() {
  background(0);

  int i = 0;
  while (i < obj.size()) {
    gameobj currentobj = obj.get(i);
    currentobj.act();
    currentobj.show();
    if (currentobj.lives == 0)
      obj.remove(i);
    else
      i++;
  }

  // Pause button
  if (dist(mouseX, mouseY, 70, 70) < 50) {
    stroke(#B1DEDA);
  } else {
    stroke(0);
  }

  fill(255);
  strokeWeight(5);
  circle(70, 70, 100);
  line(50, 40, 50, 100);
  line(88, 40, 88, 100);

  textSize(40);
  fill(255);
  text("Score " + score, width/2, 50);

  // Draw hearts 
  for (int j = 0; j < p1.hp; j++) {
    image(heart, 450 + j * 100 - 100, 100);
  }
}


void gameclicks() {
  //mode = gameover;
  if (dist(mouseX, mouseY, 70, 70) < 50) {
    mode = pause;
  }
}
