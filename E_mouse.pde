void mouseReleased() {

  if (mode ==INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode== GAMEOVER) {
    gameoverClicks();
  }
}

//tactile for rect
void tactile(int x, int y, int w, int h) {
  if (mouseX> x && mouseX < x+w && mouseY> y && mouseY< y+h) {
    stroke(255);
  }
}

//tactile for circle
void tactile2(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(255);
  }
}
