//music variable
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Color pallette
color  red      = #d11149;
color  orange   = #f17105;
color  blue     = #1a8fe3;
color  green    = #0aff99;
color  purple   = #6610f2;
color  yellow   = #e6c229;
color  Pred     = #ff99c8;
color  Pyellow  = #fcf6bd;
color  Pblue    = #a9def9;
color  Pgreen   = #d0f4de;
color  Ppurple  = #e4c1f9;

//random number & color
int randomWord  = (int) random(0, 6); //will return 1-5, not 5.99 because we add int
int randomColor = (int) random(0, 6);

int randomX;

int titleX; 
int titleY;
int vx;

int smokeY= 200;
int smokeotherY= 250;

float chances = random(0,1);

String[] words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE"}; //string array for words
color[] colors = {red, orange, yellow, green, blue, purple}; //array same order as string

//GIF
PImage[] gif2;
int numberOfFrames;
int o;

//font
PFont  font;
PFont  fontover;

//scoring
int score;
int highscore;

//timer
float timer;

//sound variables
Minim minim;
AudioPlayer intro, sucess, failure;

//MODE variables------------------------------------
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE= 2;
final int GAMEOVER= 3;
final int OPTION=4;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);

  mode=INTRO;

  titleX= -10;
  titleY= 250;
  vx = 5;
  
  //GIF
  numberOfFrames= 6;
  gif2= new PImage [numberOfFrames];

  int j=0;
  while (j< numberOfFrames) {
    gif2[j] = loadImage("frame_"+j+"_delay-0.03s.gif");
    j++;
  }

  //font
  font   = createFont("vintage.ttf", 40);
  fontover = createFont("game_over.ttf", 40);


   //randomy
   randomX= -100;
   
  //scoring
  score= 0;
  highscore=0;

  //minim sounds
  minim = new Minim(this);
  intro = minim.loadFile("MUSIC.mp3");
  sucess = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
}

void draw() {// where you do all of animation/ buttons/ drawing (shouldn't change) if want to add things, go to framework
  if (mode ==INTRO) {
    intro(); //if mode = intro, then intro will be the draw function
  } else if (mode == GAME) {
    game(); //if mode= game. then intro will stop and game will be draw function
  } else if (mode == PAUSE) {
    pause();
  } else if (mode== GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
