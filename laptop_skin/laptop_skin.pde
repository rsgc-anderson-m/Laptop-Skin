//variables
float ballX; //horizontal
float ballY; // vertical

float ballX2; 
float ballY2;

float ballX3;
float ballY3;

float ballX4;
float ballY4;

float speedY = random (2, 3);
float speedY2 = random (2, 3);
float speedY3 = random (2, 3);
float speedY4 = random (2, 3);

float speedX = random (2, 3);
float speedX2 = random (2, 3);
float speedX3 = random (2, 3);
float speedX4 = random (2, 3);


void setup () {
  //canvas
  size (1280, 700); 
  //colorMode
  //colorMode (HSB, 360, 100, 100);
  // Slow down the animation
  //frameRate(1);

  // Set the initial position of the balls
  ballX = random(26, 474);
  ballY = random(26, 474);
  ballX2 = random(26, 474);
  ballY2 = random(26, 474);
  ballX3 = random(26, 474);
  ballY3 = random(26, 474);
  ballX4 = random(26, 474);
  ballY4 = random(26, 474);
}

void draw () {

  ballY = ballY +speedY;
  // println("Vertical position is: " + ballY);
  // println("ballD is: " + speedY);


  ballX = ballX + speedX;
  ballY = ballY + speedY;

  //println("Horizontal position is: " + ballX);
  //println("speedX is: " + speedX);

  ballY2 = ballY2 +speedY2;
  ballY3 = ballY3 +speedY3;
  ballY4 = ballY4 +speedY4;

  ballX2 = ballX2 + speedX2;
  ballX3 = ballX3 + speedX3;
  ballX4 = ballX4 + speedX4;



  if (ballY < 25 || ballY > height - 25) {
    speedY = speedY*-1;
  }

  if (ballX < 25 || ballX > width - 25) {
    speedX = speedX *-1;
  }
  
  if (ballY2 < 25 || ballY2 > height - 25) {
    speedY2 = speedY2*-1;
  }

  if (ballX2 < 25 || ballX2 > width -25) {
    speedX2 = speedX2 *-1;
  }  
  
  if (ballY3 < 25 || ballY3 > height - 25) {
    speedY3 = speedY3*-1;
  }
  
  if (ballX3 < 25 || ballX3 > width - 25) {
    speedX3 = speedX3 *-1;
  }  
  
  if (ballY4 < 25 || ballY4 > height - 25) {
    speedY4 = speedY4*-1;
  }

  if (ballX4 < 25 || ballX4 > width - 25) {
    speedX4 = speedX4 *-1;
  }


  //background (255);


  //red ball
  //noStroke();
  fill (255, 0, speedY *100); 
  ellipse (ballX, ballY, 50, 50);

  //blue ball
  //noStroke();
  fill (speedX2 * 100, 50, 255); 
  ellipse (ballX2, ballY2, 50, 50);

  //green ball
  //noStroke();
  fill (0, 255, 0); 
  ellipse (ballX3, ballY3, 50, 50);

  //yellow ball
  //noStroke();
  fill (254, 255, 41); 
  ellipse (ballX4, ballY4, 50, 50);
}
