PImage bg;
PImage fg;
PFont font;
private int[][] board;


void setup() {
  size(800,800);
  
  bg = loadImage("wood.png");
  fg = loadImage("checkers.jpg");
  image(bg,0,0);
  tint(255,150);
  image(fg, (width-650)/2,(height-650)/2, 650, 650);
  
  fill(0,0,0);
  textSize(100);
  text("CHECKERS", (width-150)/4, height/4);
  
  textSize(40);
  text("By Zafir Hasan", (width+250)/4, (height+200)/4);
  
  textSize(50);
  textAlign(RIGHT,CENTER);
  text("START", (width-100)/2, height/2);
  
  textAlign(LEFT,CENTER);
  text("HELP", (width+150)/2, height/2); 

}

void clickStart() {
  
 //"START" button 
 if ((mouseX >= (width-100)/2 && mouseX <= (width-100)/2)) {  //&& (mouseY >= (height/2) && mouseY <=
   textSize(60);
   textAlign(RIGHT,CENTER);
   text("START", (width-100)/2, height/2); 
 }
 
}

void draw() {
  clickStart();
}

/* 
void clickHelp() {
  //"HELP" button
  if (
  
}

void setupBoard() {
  */
