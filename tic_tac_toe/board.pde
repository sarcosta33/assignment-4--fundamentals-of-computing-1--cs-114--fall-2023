// sets up grid lines
void drawBoard() {
  line(width/3, 0, width/3, height);
  line(width-(width/3), 0, width-(width/3), height);
  line(0, height/3, width, height/3);
  line(0, height-(height/3), width, width-(width/3)); 
}
