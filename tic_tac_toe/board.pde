void keyPressed() {
  int square = key - '0';
  if (square >= 0 && square <= 8 && !gameEnded) {
    int row = square / BOARD_SIZE;
    int col = square % BOARD_SIZE;
    if (gameBoard[row][col] == EMPTY) {
      gameBoard[row][col] = USER;
      if (!checkGameEnd()) {
        computerPlay();
        println("Game still in progress"); 
      }
    } else {
      println("The square is already taken. Choose another square.");
    }
  } else if (!gameEnded) {
    println("Invalid input. Choose again.");
  } else {
    reportWinner(gameBoard[0][0]); 
  }
}

boolean checkGameEnd() {
  // Check rows and columns for a win
  for (int num = 0; num < BOARD_SIZE; num++) {
    if (gameBoard[num][0] != EMPTY && gameBoard[num][0] == gameBoard[num][1] && gameBoard[num][0] == gameBoard[num][2]) {
      reportWinner(gameBoard[num][0]);
      return true;
    }
    if (gameBoard[0][num] != EMPTY && gameBoard[0][num] == gameBoard[1][num] && gameBoard[0][num] == gameBoard[2][num]) {
      reportWinner(gameBoard[0][num]);
      return true;
    }
  }
  
  // Checks diagonals for a win 
  if (gameBoard[0][0] != EMPTY && gameBoard[0][0] == gameBoard[1][1] && gameBoard[0][0] == gameBoard[2][2]) {
    reportWinner(gameBoard[0][0]);
    return true;
  }
  if (gameBoard[0][2] != EMPTY && gameBoard[0][2] == gameBoard[1][1] && gameBoard[0][2] == gameBoard[2][0]) {
    reportWinner(gameBoard[0][2]);
    return true;
  }

  // Checks for a tie
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
    gameEnded = true;
    return true;
  }

  return false; // Game is still in progress
}

void computerPlay() {
  while (!gameEnded) {
    int randRow = int(random(0, BOARD_SIZE));
    int randCol = int(random(0, BOARD_SIZE));
    if (gameBoard[randRow][randCol] == EMPTY) {
      gameBoard[randRow][randCol] = COMPUTER;
      if (!checkGameEnd()) {
        break;
      }
    }
  }
}

void reportWinner(int winner) {
  if (winner == USER) {
    println("You win!");
  } else {
    println("Computer wins!");
  }
  gameEnded = true;
}
