PImage bg;
PImage fg;
PFont font;
boolean sb = false; 


void setup() {
  size(800,800);
  
  //Load background images onto window (wood, checkerboard)
  bg = loadImage("wood.png");
  fg = loadImage("checkers.jpg");
  image(bg,0,0);
  tint(255,150);
  image(fg, (width-650)/2,(height-650)/2, 650, 650);
  
  //Creates a rectangle around the title and name
  rect((width-530)/2, (height-600)/2, 550, 170, 6, 6, 6, 6);
  
  //Creates title
  fill(0);
  textSize(100);
  text("CHECKERS", (width-150)/4, height/4);
  
  //Creates name
  textSize(40);
  text("By Zafir Hasan", (width+250)/4, (height+200)/4);
  
  //Creates rectangles around the start and help buttons
  //Rectangles will serve as buttons
  fill(255);
  rect((width-430)/2, (height-60)/2, 170, 70, 6, 6, 6, 6);
  rect((width+100)/2, (height-60)/2, 170, 70, 6, 6, 6, 6);

  //Creates Start button
  fill(0);
  textSize(50);
  textAlign(RIGHT,CENTER);
  text("START", (width-100)/2, height/2);
  
  //creates help button
  textAlign(LEFT,CENTER);
  text("HELP", (width+150)/2, height/2); 
}

void overStart() {
  
 }
 
}

/*
void draw() {
}
*/


/*
void clickHelp() {
  //"HELP" button
  if (
  
}
*/

void setupBoard() {
  background(255);
  image(bg,0,0);
  image(fg, (width-650)/2,(height-650)/2, 650, 650);
}

