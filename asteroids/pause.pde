void pause(){
    fill(0, 25);
    stroke(#B1DEDA);
  rect(205, 305, 600, 200);
 
  
  
  
  
  if (dist(mouseX, mouseY, 70, 70) < 50) {
    stroke(#B1DEDA);
  }else{
    stroke(0);
  }
    fill(255);
    strokeWeight(5);
    
  circle(70, 70, 100);
  triangle(50, 40, 100, 70, 50, 100);
 

   text("PAUSE", width/2, height/2);

}
void pauseclicks(){

if (dist(mouseX, mouseY, 70, 70) < 50) {
  mode = game;
}
} 
