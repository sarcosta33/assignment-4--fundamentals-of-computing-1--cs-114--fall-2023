// draws 'X'
void drawX(float x, float y, float size) {
  line(x, y, x + size, y + size);
  line(x, y + size, x + size, y);
}

// draws 'O'

void draw0(float x, float y, float size) {
   ellipse(x + size / 2, y + size / 2, size, size); 
}
