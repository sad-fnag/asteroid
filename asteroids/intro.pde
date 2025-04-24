void intro() {
  background(0);





  stroke(255);
  if ( mouseX > 400 && mouseX < 600 && mouseY > 515 && mouseY < 585) {
    strokeWeight(5);
    fill(#C2D2ED, 100);
  } else {
    strokeWeight(2);
    fill(255, 50);
  }
  rect(400, 515, 200, 70);

  textSize(27);
  fill(255);
  text("Begin", 500, 550);




  //=================================================
  fill(255);
  textFont(overthere);
  textSize(tsize);
  text("Asteroids", width/2, 340);
}

void introclicks() {
  if ( mouseX > 400 && mouseX < 600 && mouseY > 515 && mouseY < 585) {
    mode = game;
  }
}
