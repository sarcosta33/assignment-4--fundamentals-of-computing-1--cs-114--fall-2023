/*
void drawX(float x, float y, float size) { 
  line(x, y, x + size, y + size);
  line(x, y + size, x + size, y);
}
*/

void draw0(float x, float y, float size) {
   ellipse(x + size / 2, y + size / 2, size, size); 
}

void drawX(int row, int col, int size) {
  float x = col * size;
  float y = row * size;
  line(x, y, x + size, y + size);
  line(x, y + size, x + size, y);
}
