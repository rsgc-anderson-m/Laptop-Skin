//variables
float ballX; //horizontal
float ballY; // vertical
float ball1Hue1 = 0; //colour
float ball1Hue2 = 35;
float ball1CurrentHue = ball1Hue1;

// float ballX2; 
// float ballY2;
// float ballHue2 = 300;

// float ballX3;
// float ballY3;
// float ballHue3 = 300;

// float ballX4;
// float ballY4;
// float ballHue4 = 300;

// set initial speed
float speedY = random (2, 3);
// float speedY2 = random (2, 3);
// float speedY3 = random (2, 3);
// float speedY4 = random (2, 3);

float speedX = random (2, 3);
// float speedX2 = random (2, 3);
// float speedX3 = random (2, 3);
// float speedX4 = random (2, 3);


void setup () {
  //canvas
  size (1280, 700); 
  background(255);

  // set to hsb
  colorMode(HSB, 360, 100, 100);

  // Set the initial position of the balls
  ballX  = random(25, width - 25);
  ballY  = random(25, height -25);
  // ballX2 = random(25, width - 25);
  // ballY2 = random(25, height -25);
  // ballX3 = random(25, width - 25);
  // ballY3 = random(25, height -25);
  // ballX4 = random(25, width - 25);
  // ballY4 = random(25, height -25);
}

void draw () {



  // update position of ball
  ballX = ballX + speedX;
  ballY = ballY + speedY;



  // ballY2 = ballY2 +speedY2;
  // ballY3 = ballY3 +speedY3;
  // ballY4 = ballY4 +speedY4;

  // ballX2 = ballX2 + speedX2;
  // ballX3 = ballX3 + speedX3;
  // ballX4 = ballX4 + speedX4;


  // detects when ball 1 hits the top or bottom border
  if (ballY < 25 || ballY > height - 25) {
    //change direction
    speedY = speedY*-1;

    // toggle between hues
    if ( ball1CurrentHue==ball1Hue1) {
      ball1CurrentHue=ball1Hue2;
    } else { 
      ball1CurrentHue= ball1Hue1;
    }
  }

  // detects when ball 1 hits the left or right border
  if (ballX < 25 || ballX > width - 25) {
    // change direction
    speedX = speedX *-1;
    
    // toggle between hues
    if ( ball1CurrentHue==ball1Hue1) {
      ball1CurrentHue=ball1Hue2;
    } else { 
      ball1CurrentHue= ball1Hue1;
    }
  }

  // detects when ball 2 hits the top or bottom border
  // if (ballY2 < 25 || ballY2 > height - 25) {
  //   speedY2 = speedY2*-1;
  //   ballHue2=100;
  // }

  // // detects when ball 2 hits the left or right border
  // if (ballX2 < 25 || ballX2 > width -25) {
  //   speedX2 = speedX2 *-1;
  // }

  // // detects when ball 3 hits the top or bottom border
  // if (ballY3 < 25 || ballY3 > height - 25) {
  //   speedY3 = speedY3*-1;
  //   ballHue3=120;
  // }

  // // detects when ball 3 hits the left or right border
  // if (ballX3 < 25 || ballX3 > width - 25) {
  //   speedX3 = speedX3 *-1;
  // }

  // // detects when ball 4 hits the top or bottom border
  // if (ballY4 < 25 || ballY4 > height - 25) {
  //   speedY4 = speedY4*-1;
  //   ballHue4=250;
  // }

  // // detects when ball 4 hits the left of right border
  // if (ballX4 < 25 || ballX4 > width - 25) {
  //   speedX4 = speedX4 *-1;
  // }


  //purple ball
  fill(ball1CurrentHue, 100, 100);
  ellipse (ballX, ballY, 50, 50);


  // //blue ball
  // fill(ballHue2, 100, 100);
  // ellipse (ballX2, ballY2, 50, 50);


  // //green ball
  // fill(ballHue3, 100, 100);
  // ellipse (ballX3, ballY3, 50, 50);


  // //yellow ball
  // fill(ballHue4, 100, 100);
  // ellipse (ballX4, ballY4, 50, 50);
}
// 
