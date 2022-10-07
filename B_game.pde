void game() {
  background(Ppurple);

  //half screen right
  stroke(Pgreen);
  fill(Pgreen);
  rect(0, 0, width/2, height);
  fill(0);
  textSize(60);
  text("MATCH", width/4, 100);
  fill(green);
  tactile2(width/4, 300, 100);
  circle(width/4, 300, 200);

  //half screen left
  stroke(Pred);
  fill(Pred);
  rect(width/2, 0, width/2, height);
  fill(0);
  textSize(50);
  text("DONT MATCH", 600, 100);
  fill(red);
  tactile2(600, 300, 100);
  circle(600, 300, 200);

  //scoring
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 680); //will say the work score + the value of the score

  //words that pop up
  textSize(100);
  fill(colors [randomColor]); //color at the page of a random color
  text(words[randomWord], randomX, 500);
  randomX= randomX+7;
  
  
  //timer on word
  if (randomX> width + 100){
    randomX= -100;
    mode= GAMEOVER;
  }



  if (score>highscore) {
    highscore = score;
  }
}

void gameClicks() {

  // word and color match, and click on wrong button (DONT MATCH)
  if (dist(600, 300, mouseX, mouseY)<100 && randomWord==randomColor ) { // if the word and color match, and click right one you get +1
    mode=GAMEOVER;
    failure.play();
    failure.rewind();
    randomX= -100;
    chances     = random(0, 1);
    if (chances<0.5) {
      randomWord  = (int) random(0, 6);
      randomWord=randomColor;
    } else if (chances>0.5) {
      randomWord  = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      while (randomWord==randomColor) {
        randomWord  = (int) random(0, 6);
        randomColor = (int) random(0, 6);
      }
    }
  }

  // word and color dont match, and click on right button (DONT MATCH)
  if (dist(600, 300, mouseX, mouseY)<100 && randomWord!=randomColor ) { // if the word and color match, and click right one you get +1
    score++;
    sucess.play();
    sucess.rewind();
    randomX= -100;
    chances     = random(0, 1);
    if (chances<0.5) {
      randomWord  = (int) random(0, 6);
      randomWord=randomColor;
    } else if (chances>0.5) {
      randomWord  = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      while (randomWord==randomColor) {
        randomWord  = (int) random(0, 6);
        randomColor = (int) random(0, 6);
      }
    }
  }

  // word and color dont match, and click on wrong button (MATCH)
  if (dist(width/4, 300, mouseX, mouseY)<100 && randomWord!=randomColor ) { // if the word and color match, and click right one you get +1
    mode=GAMEOVER;
    failure.play();
    failure.rewind();
    randomX= -100;
    chances     = random(0, 1);
    if (chances<0.5) {
      randomWord  = (int) random(0, 6);
      randomWord=randomColor;
    } else if (chances>0.5) {
      randomWord  = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      while (randomWord==randomColor) {
        randomWord  = (int) random(0, 6);
        randomColor = (int) random(0, 6);
      }
    }
  }

  // word and color match, and click on right button (MATCH)
  if (dist(width/4, 300, mouseX, mouseY)<100 && randomWord==randomColor ) { // if the word and color match, and click right one you get +1
    score++;
    sucess.play();
    sucess.rewind();
    randomX= -100;
    chances     = random(0, 1);
    if (chances<0.5) {
      randomWord  = (int) random(0, 6);
      randomWord=randomColor;
    } else if (chances>0.5) {
      randomWord  = (int) random(0, 6);
      randomColor = (int) random(0, 6);
      while (randomWord==randomColor) {
        randomWord  = (int) random(0, 6);
        randomColor = (int) random(0, 6);
      }
    }
  }
}
