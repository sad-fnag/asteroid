void game() {
  background(0);


  int i = 0;
  while (i < obj.size() ) {
    gameobj currentobj = obj.get(i);
    currentobj.act();
    currentobj.show();
    if ( currentobj.lives == 0)
      obj.remove(i);
    else
      i++;
  }
}

void gameclicks() {
  //mode = gameover;
}
