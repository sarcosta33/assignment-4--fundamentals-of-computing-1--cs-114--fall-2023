void setup() {
  size(500, 500);
  initializeGameBoard();
  println("Computer starts the game. Press a number between 0-8 to play.");
}

void draw() {
  drawBoard(gameBoard);
}
