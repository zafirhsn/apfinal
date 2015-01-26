private PImage bg;
private PImage fg;
private PFont font;

private int startboxX = 185;
private int startboxY = 370;
private int helpboxX = 450;
private int helpboxY = 370;

private boolean menuScreen = true;
private boolean boardScreen = false;
private boolean helpScreen = false;


void setup() {
  size(800, 800);
  
  //Load background images onto window (wood, checkerboard)
  createBackground();

  //Creates title
  createTitle();

  //Creates start and help buttons
  fill(255);
  createStart();
  createHelp();
}

void createBackground() {
  bg = loadImage("wood.png");
  fg = loadImage("checkers.jpg");
  image(bg, 0, 0);
  tint(255, 150);
  image(fg, (width-650)/2, (height-600)/2, 650, 650);
}

void createTitle() {
   rect((width-530)/2, (height-580)/2, 550, 100, 6, 6, 6, 6);
   fill(0);
   textSize(100);
   text("CHECKERS", (width-150)/4, height/4);
}

void createStart() {
  rect(startboxX, startboxY, 170, 70, 6, 6, 6, 6);
  fill(0);
  textSize(50);
  textAlign(RIGHT, CENTER);
  text("START", (width-100)/2, height/2);
}

void createHelp() {
  rect(helpboxX, helpboxY, 170, 70, 6, 6, 6, 6);
  fill(0);
  textAlign(LEFT, CENTER);
  text("HELP", (width+150)/2, height/2);
}

void checkHover() {
  if (overStart()) {
    fill(0,200,0,50);
    createStart(); 
  }
  else {
    fill(255);
    createStart();
  }
  if (overHelp()) {
    fill(200,0,0,50);
    createHelp();
  }
  else {
    fill(255);
    createHelp();
  }
}

void draw() {
  //Start and help buttons are redrawn a different shade when mouse hovers over
  if (menuScreen) {
    checkHover();
  }
  
  clickStart();
  clickHelp();
  
}

boolean overStart() {
  if ((mouseX >= startboxX && mouseX <= (startboxX + 170)) && (mouseY >= startboxY && mouseY <= (startboxY + 70))) {
    return true;
  }
  return false;
}

boolean overHelp() {
  if ((mouseX >= helpboxX && mouseX <= (helpboxX + 170)) && (mouseY >= helpboxY && mouseY <= (helpboxY + 70))) {
    return true;
  }
  return false;
}

void clickStart() {
  if ((mousePressed && (mouseButton == LEFT)) && overStart()) {
    menuScreen = false;
    boardScreen = true;
    helpScreen = false;
    image(bg, 0, 0);
    image(fg, (width-650)/2, (height-600)/2, 650, 650);
  }
}

void clickHelp() {
  if ((mousePressed && (mouseButton == LEFT)) && overHelp()) {
    menuScreen = false;
    boardScreen = false;
    helpScreen = true;
    image(bg, 0, 0);
    fill(255);
    rect (50, 50, 700, 700, 6, 6, 6, 6);
    Rules();
    
  }
}

void Rules() {
  fill(0);
  textSize(12);
  
  //Used y to enable me to shift all text down/up at once instead of readjusting invidually
  int y = 70;
  
  //Rule 1
  text("1. Checkers is played by two players. Each player begins the game with 12 colored discs. (Typically, one set of)", 80, y);
  text("pieces is black and the other red.", 80, y+15);
  
  //Rule 2
  text("2. The board consists of 64 squares, alternating between 32 dark and 32 light squares. It is positioned so that ", 80, y+40);
  text("each player has a light square on the right side corner closest to him or her.", 80, y+55);
  
  //Rule 3
  text("3. Each player places his or her pieces on the 12 dark squares closest to him or her.", 80, y+80);
  
  //Rule 4
  text("4. Black moves first. Players then alternate moves.", 80, y+105);
  
  //Rule 5
  text("5. Moves are allowed only on the dark squares, so pieces always move diagonally. Single pieces are always limited ", 80, y+130);
  text("to forward moves (toward the opponent).", 80, y+145);
  
  //Rule 6
  text("6. A piece making a non-capturing move (not involving a jump) may move only one square.", 80, y+170);
  
  //Rule 7
  text("7. A piece making a capturing move (a jump) leaps over one of the opponent's pieces, landing in a straight ", 80, y+195);
  text("diagonal line on the other side. Only one piece may be captured in a single jump; however, multiple jumps", 80, y+210); 
  text("are allowed on a single turn.", 80, y+225);
  
  //Rule 8 
  text("8. When a piece is captured, it is removed from the board.", 80, y+250);
 
  //Rule 9
 text("9. If a player is able to make a capture, there is no option -- the jump must be made. If more than", 80, y+275);
 text("one capture is available, the player is free to choose whichever he or she prefers.", 80, y+290);
 
 //Rule 10
 text("10. When a piece reaches the furthest row from the player who controls that piece, it is crowned and becomes ", 80, y+315);
 text("a king. One of the pieces which had been captured is placed on top of the king so that it is twice as high as a", 80, y+330);
 text("single piece.", 80, y+345);
 
 //Rule 11
 text("11. Kings are limited to moving diagonally, but may move both forward and backward. (Remember that single,", 80, y+370);
 text("pieces i.e. non-kings, are always limited to forward moves.)", 80, y+385);
 
 //Rule 12
 text("12. Kings may combine jumps in several directions -- forward and backward -- on the same turn. Single pieces ", 80, y+410); 
 text("may shift direction diagonally during a multiple capture turn, but must always jump forward.", 80, y+425);
 
 //Rule 13
 text("13. A player wins the game when the opponent cannot make a move. In most cases, this is because all of the", 80, y+450);
 text("opponent's pieces have been captured, but it could also be because all of his pieces are blocked in.", 80, y+465);
}






