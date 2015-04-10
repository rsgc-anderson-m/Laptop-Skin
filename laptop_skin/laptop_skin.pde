//variables
int ballX = 150; //horrazontal
int ballY = 250; // vertical

// int ballX2 = 250;
// int ballY2 = 250;

// int ballX3 = 350;
// int ballY3 = 250;

int speedY = 2; 
int speedX = 4;


void setup () {
  //canvas
  size (500, 500); 
  //colorMode
  colorMode (HSB, 360, 100, 100);
  // Slow down the animation
  //frameRate(1);
}

void draw () {

  ballY = ballY +speedY;
  // println("Vertical position is: " + ballY);
  // println("ballD is: " + speedY);


  ballX = ballX + speedX;

  println("Horizontal position is: " + ballX);
  println("speedX is: " + speedX);

  if (ballY < 25 || ballY >475) {
    speedY = speedY*-1;
  }
  
  if (ballX < 25 || ballX > 475) {
    speedX = speedX *-1;
  }


  //background (#6797E8);
  //noStroke();
  fill (360, 100, 100); 
  ellipse (ballX, ballY, 50, 50);
  // ellipse (ballX2, ballY2, 50, 50);
  // ellipse (ballX3, ballY3, 50, 50);
}
