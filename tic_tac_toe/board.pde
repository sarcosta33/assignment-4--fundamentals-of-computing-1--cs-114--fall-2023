// sets up grid lines
void drawBoard() {
  line(width/3, height, width/3, 0);
  line(width*(0.66), height, width*(0.66), 0);
  line(0, height/3, width, height/3);
  line(0, height*(0.66), width, height*(0.66)); 
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
      println("Game still in progress."); 
      break; 
      
    case '1':
      println("Game still in progress."); 
      break; 
      
    case '2':
      println("Game still in progress."); 
      break; 
      
    case '3':
      println("Game still in progress."); 
      break; 
      
    case '4':
      println("Game still in progress."); 
      break; 
      
    case '5':
      println("Game still in progress."); 
      break; 
      
    case '6':
      println("Game still in progress."); 
      break; 
      
    case '7':
      println("Game still in progress."); 
      break; 
      
    case '8':
      println("Game still in progress."); 
      break; 
      
    default:
      println("Invalid input"); 
      break; 
  }
}
