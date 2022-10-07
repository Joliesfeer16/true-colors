void gameover() {
  intro.pause();
  background(purple);


  //smoke
  smoke(-100, smokeY);
  smokeY= smokeY-1;
  if (smokeY<-300) {
    smokeY= 200;
  }

  //smoke
  smoke(250, smokeY);
  smokeY= smokeY-1;
  if (smokeY<-300) {
    smokeY= 200;
  }

  smokeother(0, smokeotherY);
  smokeotherY= smokeotherY-1;
  if (smokeotherY<-300) {
    smokeotherY=250;
  }

  smokeother(350, smokeotherY);
  smokeotherY= smokeotherY-1;
  if (smokeotherY<-300) {
    smokeotherY=250;
  }
  volcano(400, 400);
  volcano(50, 400);



  //gameover
  fill(255);
  textFont(fontover, 250);
  text("GAMEOVER", width/2, 200);

  //highscore
  fill(255);
  textSize(100);
  text("HIGHSCORE:" + highscore, 400, 300);
  
  fill(orange);
  tactile(360,350,80,80);
  rect(360,350,80,80);
  fill(purple);
  text("R", 397, 380);
}

void gameoverClicks() {
  mode=INTRO;
  score=0;
}

void volcano(int x, int y) {
  pushMatrix();
  translate(x, y);
  //volcano
  scale(0.5);
  stroke(108, 58, 11);
  fill(108, 58, 11);
  rect(248, 300, 308, 500);
  triangle(248, 313, 250, 800, 100, 800);
  triangle(556, 313, 556, 800, 700, 800);

  //lava
  stroke(247, 126, 12);
  fill(247, 126, 12);
  circle(290, 300, 80);
  circle(360, 300, 80);
  circle(450, 300, 80);
  circle(515, 300, 80);
  ellipse(405, 330, 30, 120);
  ellipse(265, 330, 30, 150);
  ellipse(500, 330, 40, 200);
  ellipse(320, 330, 45, 80);

  //cutoff
  stroke(purple);
  fill(purple);
  rect(200, 225, 400, 80);
  popMatrix();
}

void smoke(int x, int y) {
  pushMatrix();
  translate(x, y);

  //smoke
  stroke(160, 146, 134);
  fill(160, 146, 134);
  circle(300, 270, 30);
  circle(300, 240, 50);
  circle(300, 200, 70);

  popMatrix();
}

void smokeother(int x, int y) {
  pushMatrix();
  translate(x, y);

  //smoke
  stroke(160, 146, 134);
  fill(160, 146, 134);
  circle(300, 270, 30);
  circle(300, 240, 50);
  circle(300, 200, 70);

  popMatrix();
}


//notes: if you dont out tranlate x,y, the void function will js go wherever it is on the drawing, so if you want to move it, must chnage every single variable/shift
