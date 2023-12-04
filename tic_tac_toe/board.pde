// sets up grid lines
void drawBoard() {
  line(width/3, 0, width/3, height);
  line(width-(width/3), 0, width-(width/3), height);
  line(0, height/3, width, height/3);
  line(0, height-(height/3), width, width-(width/3)); 
}

// user input
void keyPressed() {
  int square = key - '0'; 
  
  // calculates row and column based on square 
  //int row = square 
  //int col = square
  
  // checks if tile is taken 
  //if (board[row][col] == true) {
  
  // else () {
  //println("The tile is filled. Choose again."); 
  
  // checking if input valid 
  switch (key) {
    case '0':
      println("Game still in progress.); 
      break; 
    default:
      println("Invalid input); 
      break; 
  }
}
  
  
  /*
  if (square == 0 || square == 1 || square == 2 || square == 3 || square == 4 || square == 5 || square == 6 || square == 7 || square == 8) {
    println("Game still in progress.");
  }  
  
  else {
    println("Invalid input. Press a number between 0-8!"); 
  }
  */
