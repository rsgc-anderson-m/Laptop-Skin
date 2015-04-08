//variables
int ballX = 150;
int ballY = 250;

// int ballX2 = 250;
// int ballY2 = 250;

// int ballX3 = 350;
// int ballY3 = 250;

int ballD = 2;



void setup () {
  //canvas
  size (500, 500); 
  //colorMode
  colorMode (HSB, 360, 100, 100);
}

void draw () {

  ballY = ballY +ballD;
  
  if (ballY < 25 || ballY >475){
   ballD = ballD*-1;
  }
   

  background (#6797E8);
  noStroke();
  fill (360, 100, 100); 
  ellipse (ballX, ballY, 50, 50);
  // ellipse (ballX2, ballY2, 50, 50);
  // ellipse (ballX3, ballY3, 50, 50);
}
