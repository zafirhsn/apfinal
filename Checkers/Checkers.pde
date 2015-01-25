private PImage bg;
private PImage fg;
private PFont font;
int startboxX = 185;
int startboxY = 370;
int helpboxX = 450;
int helpboxY = 370;
color startHighlight = color(0);

void setup() {
  size(800, 800);

  //Load background images onto window (wood, checkerboard)
  bg = loadImage("wood.png");
  fg = loadImage("checkers.jpg");
  image(bg, 0, 0);
  tint(255, 150);
  image(fg, (width-650)/2, (height-650)/2, 650, 650);

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
  rect(startboxX, startboxY, 170, 70, 6, 6, 6, 6);
  rect(helpboxX, helpboxY, 170, 70, 6, 6, 6, 6);

  //Creates Start button
  fill(0);
  textSize(50);
  textAlign(RIGHT, CENTER);
  text("START", (width-100)/2, height/2);

  //creates help button
  textAlign(LEFT, CENTER);
  text("HELP", (width+150)/2, height/2);
}


void draw() {
  if (overStart()) {
    fill(startHighlight);
  }
}

boolean overStart() {
  if ((mouseX >= startboxX && mouseX <= (startboxX + 170)) && (mouseY >= startboxY && mouseY <= (startboxY + 70))) {
    return true;
  }
  return false;
}

boolean overHelp() {
  if ((mouseX >= helpboxX && mouseX <= (helpboxX + 170)) && (mouseY >= helpboxX && mouseY <= (startboxY + 70))) {
    return true;
  }
  return false;
}




/*
void clickHelp() {
 //"HELP" button
 if (
 
 }
 */

void setupBoard() {
  background(255);
  image(bg, 0, 0);
  image(fg, (width-650)/2, (height-650)/2, 650, 650);
}

