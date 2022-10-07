void intro() {
  
  intro.play();
  
  //gif
  image(gif2[o], 0, 0, width, height);
  o= o+1;
  if (o== numberOfFrames) o=0;

  //title
  textFont(font, 128);
  textSize(100);
  fill(yellow);
  text("TRUE COLORS", titleX, titleY);//start button
  
  titleX= titleX+vx;
  if (titleX>width){
    vx= -10;
  }
  if (titleX<10){
    vx = 10;
  }

  //start button
  strokeWeight(4);
  stroke(yellow);
  fill(Pyellow);
  tactile(300, 350, 200, 100);
  rect(300, 350, 200, 100);
  fill(0);
  textSize(30);
  text("START", 400, 400);
}

void introClicks() {
  if (mouseX>300 && mouseX< 500 && mouseY> 350 && mouseY<450) {
    mode= GAME;
  }
}
