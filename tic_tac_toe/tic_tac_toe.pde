void setup() {
  size(500, 500);
  drawBoard(); 
  println("You did not press a number between 0-8."); 
}

void draw() {
  keyPressed();
  noLoop(); 
}
