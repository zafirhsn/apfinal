PImage bg;
PImage fg;
PFont font;
private int[][] board;


void setup() {
  size(800,800);
  
  bg = loadImage("wood.png");
  fg = loadImage("checkers.jpg");
  image(bg,0,0);
  tint(255,70);
  image(fg, (width-650)/2,(height-650)/2, 650, 650);
  
  font = loadFont("CharterBT-Bold-48.vlw");
  fill(50,50,50,100);
  textFont(font, 100);
  text("Checkers", width/4, height/4);
  textAlign(CENTER,TOP);
  text("START",width/2, height/2);
  
}

