void reset() {
  obj = new ArrayList();
  p1 = new spaceship();

 obj.add(p1);
 
 
  obj.add(new asteroid());
  obj.add(new asteroid());
  obj.add(new asteroid());
  obj.add(new asteroid());
  obj.add(new asteroid());
    obj.add(new asteroid());
  obj.add(new asteroid());


  score = 0;
  lives = 3;
}
