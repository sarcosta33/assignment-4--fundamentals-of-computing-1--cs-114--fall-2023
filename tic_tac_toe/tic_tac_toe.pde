void setup() {
  size(500, 500);
  drawBoard(); 
  println("You did not press a number between 0-8."); 
  userTurn = false; // Computer starts first
  computerPlay(gameBoard);
}

void draw() {
  keyPressed();
  noLoop();  
}
