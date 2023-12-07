void initializeGameBoard() {
  for (int row = 0; row < BOARD_SIZE; row++) {
    for (int col = 0; col < BOARD_SIZE; col++) {
      gameBoard[row][col] = EMPTY;
    }
  }
}

void drawX(float x, float y) {
  float size = CELL_SIZE / 2;
  line(x - size, y - size, x + size, y + size);
  line(x + size, y - size, x - size, y + size);
}

void drawCircle(float x, float y) {
  fill(225);
  ellipse(x, y, CELL_SIZE, CELL_SIZE);
}

void drawBoard(int[][] board) {
  for (int row = 1; row < BOARD_SIZE; row++) {
    line(row * CELL_SIZE, 0, row * CELL_SIZE, height);
    line(0, row * CELL_SIZE, width, row * CELL_SIZE);
  }

  for (int row = 0; row < BOARD_SIZE; row++) {
    for (int col = 0; col < BOARD_SIZE; col++) {
      float x = col * CELL_SIZE + CELL_SIZE / 2;
      float y = row * CELL_SIZE + CELL_SIZE / 2;
      if (board[row][col] == USER) {
        drawCircle(x, y);
      } else if (board[row][col] == COMPUTER) {
        drawX(x, y);
      }
    }
  }
}

       
