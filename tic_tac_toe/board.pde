// sets up grid lines
void drawBoard() {
  line(width/3, height, width/3, 0);
  line(width*(0.66), height, width*(0.66), 0);
  line(0, height/3, width, height/3);
  line(0, height*(0.66), width, height*(0.66)); 
}

int[][] gameBoard = new int[3][3]; 
boolean userTurn = true; 

// user input
void keyPressed() {
  int square = key - '0'; 
  int row = -1;
  int col = -1; 

  // Check if square is within the valid range
  if (square >= 0 && square <= 8) {
    row = square / 3;
    col = square % 3;
  } 
  else {
   println("Invalid input");
   return; 
  }

  // checks if tile is taken 
  if (gameBoard[row][col] == EMPTY) {
    gameBoard[row][col] = USER; 
  }
  
  else {
    println("The tile is filled. Choose again."); 
  }
  
  // checking if input valid 
  switch (square) {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
          println("Game still in progress.");
          break;
      default:
          println("Invalid input");
          break;
  }
  
  if (!checkGameEnd()) {
    if (!userTurn) {
      computerPlay(gameBoard);
      userTurn = true; 
    } else {
      userPlay(gameBoard);
      userTurn = false; 
    }
  }
}

void computerPlay(int[][] board) {
  if (!userTurn) {
    for (int row = 0; row < board.length; row++) {
      for (int col = 0; col < board[row].length; col++) {
        if (board[row][col] == EMPTY) {
          board[row][col] = COMPUTER; 
          draw0(row, col, CELL_SIZE); 
          return; 
        }
      }
    }
    userTurn = true; 
  }
}

void userPlay(int[][] board) {
  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board[row].length; col++) {
      if (board[row][col] == EMPTY) {
        board[row][col] = USER; 
        drawX(row, col, CELL_SIZE); 
        return; 
      }
    }
  }
}

boolean checkGameEnd() {
  // Check rows for a win
  for (int row = 0; row < BOARD_SIZE; row++) {
    if (gameBoard[row][0] != EMPTY && gameBoard[row][0] == gameBoard[row][1] && gameBoard[row][0] == gameBoard[row][2]) {
      println("Player " + (gameBoard[row][0] == USER ? "X" : "O") + " wins!");
      return true;
    }
  }

  // Check columns for a win
  for (int col = 0; col < BOARD_SIZE; col++) {
    if (gameBoard[0][col] != EMPTY && gameBoard[0][col] == gameBoard[1][col] && gameBoard[0][col] == gameBoard[2][col]) {
      println("Player " + (gameBoard[0][col] == USER ? "X" : "O") + " wins!");
      return true;
    }
  }

  // Check diagonals for a win
  if (gameBoard[0][0] != EMPTY && gameBoard[0][0] == gameBoard[1][1] && gameBoard[0][0] == gameBoard[2][2]) {
    println("Player " + (gameBoard[0][0] == USER ? "X" : "O") + " wins!");
    return true;
  }
  if (gameBoard[0][2] != EMPTY && gameBoard[0][2] == gameBoard[1][1] && gameBoard[0][2] == gameBoard[2][0]) {
    println("Player " + (gameBoard[0][2] == USER ? "X" : "O") + " wins!");
    return true;
  }

  // Check for a tie
  boolean boardFull = true;
  for (int row = 0; row < BOARD_SIZE; row++) {
    for (int col = 0; col < BOARD_SIZE; col++) {
      if (gameBoard[row][col] == EMPTY) {
        boardFull = false;
        break;
      }
    }
  }
  if (boardFull) {
    println("It's a tie!");
    return true;
  }

  return false; // Game is still in progress
}
