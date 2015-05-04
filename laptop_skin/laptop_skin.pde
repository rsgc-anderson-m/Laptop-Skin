// Matt Anderson
// April 24, 2015


//variables
float ballX1; //horizontal position
float ballY1; //vertical position
float ball1Hue1 = random(0, 360); //random colour
float ball1Hue2 = random(0, 360); //random colour
float ball1CurrentHue= ball1Hue1; //starting colour

//set initial speed for ball1
float speedX1 = random(2, 3);
float speedY1 = random(2, 3); 


float ballX2; //horizontal position
float ballY2; //vertical position
float ball2Hue1 = random(0, 360); //random colour
float ball2Hue2 = random(0, 360); //random colour
float ball2CurrentHue= ball2Hue1; //starting colour

//set initial speed for ball2
float speedX2 = random(2, 3);
float speedY2 = random(2, 3);


float ballX3; //horizontal position
float ballY3; //vertical position
float ball3Hue1 = random(0, 360); //random colour
float ball3Hue2 = random(0, 360); //random colour
float ball3CurrentHue= ball3Hue1; //starting colour

//set initial speed for ball3
float speedX3 = random(2, 3);
float speedY3 = random(2, 3);


float ballX4; //horizontal position
float ballY4; //vertical position
float ball4Hue1 = random(0, 360); //random colour
float ball4Hue2 = random(0, 360); //random colour
float ball4CurrentHue= ball4Hue1; //starting colour

//set initial speed for ball4
float speedX4 = random(2, 3);
float speedY4 = random(2, 3);


void setup () {

  //canvas
  size(1280, 700); 
  background(255);

  //set to hsb
  colorMode(HSB, 360, 100, 100);

  //set initial position for ball1
  ballX1 = random(25, width - 25);
  ballY1 = random(25, height -25);

  //set initial position for ball2
  ballX2 = random(25, width - 25);
  ballY2 = random(25, height -25);

  //set initial position for ball3
  ballX3 = random(25, width - 25);
  ballY3 = random(25, height -25);

  //set initial position for ball4
  ballX4 = random(25, width - 25);
  ballY4 = random(25, height -25);
}


void draw () {

  //update position of ball1
  ballX1 = ballX1 + speedX1;
  ballY1 = ballY1 + speedY1;

  //update position of ball2
  ballX2 = ballX2 + speedX2;
  ballY2 = ballY2 + speedY2;

  //update position of ball3
  ballX3 = ballX3 + speedX3;
  ballY3 = ballY3 + speedY3;

  //update position of ball4
  ballX4 = ballX4 + speedX4;
  ballY4 = ballY4 + speedY4;


  //detects when ball1 hits the left or right border
  if (ballX1 < 25 || ballX1 > width - 25) {

    //change direction
    speedX1 = speedX1 * -1;

    //toggle between hues
    if (ball1CurrentHue== ball1Hue1) {
      ball1CurrentHue = ball1Hue2;
    } else { 
      ball1CurrentHue = ball1Hue1;
    }
  }

  //detects when ball1 hits the top or bottom border
  if (ballY1 < 25 || ballY1 > height - 25) {

    //change direction
    speedY1 = speedY1 * -1;

    //toggle between hues
    if (ball1CurrentHue== ball1Hue1) {
      ball1CurrentHue = ball1Hue2;
    } else { 
      ball1CurrentHue = ball1Hue1;
    }
  }


  // detects when ball2 hits the left or right border
  if (ballX2 < 25 || ballX2 > width -25) {

    //change direction
    speedX2 = speedX2 *-1;

    //toggle between hues
    if (ball2CurrentHue==ball2Hue1) {
      ball2CurrentHue=ball2Hue2;
    } else { 
      ball2CurrentHue= ball2Hue1;
    }
  }

  // detects when ball2 hits the top or bottom border
  if (ballY2 < 25 || ballY2 > height - 25) {

    //change direction
    speedY2 = speedY2*-1;

    //toggle between hues
    if (ball2CurrentHue==ball2Hue1) {
      ball2CurrentHue=ball2Hue2;
    } else { 
      ball2CurrentHue= ball2Hue1;
    }
  }


  // detects when ball3 hits the left or right border
  if (ballX3 < 25 || ballX3 > width - 25) {

    //change direction
    speedX3 = speedX3 *-1;

    //toggle between hues
    if (ball3CurrentHue==ball3Hue1) {
      ball3CurrentHue=ball3Hue2;
    } else { 
      ball3CurrentHue= ball3Hue1;
    }
  }

  // detects when ball3 hits the top or bottom border
  if (ballY3 < 25 || ballY3 > height - 25) {

    //change direction
    speedY3 = speedY3*-1;

    //toggle between hues
    if (ball3CurrentHue==ball3Hue1) {
      ball3CurrentHue=ball3Hue2;
    } else { 
      ball3CurrentHue= ball3Hue1;
    }
  }


  // detects when ball4 hits the left of right border
  if (ballX4 < 25 || ballX4 > width - 25) {

    //change direction
    speedX4 = speedX4 *-1;

    //toggle between hues
    if (ball4CurrentHue==ball4Hue1) {
      ball4CurrentHue=ball4Hue2;
    } else { 
      ball4CurrentHue= ball4Hue1;
    }
  }

  // detects when ball4 hits the top or bottom border
  if (ballY4 < 25 || ballY4 > height - 25) {

    //change direction
    speedY4 = speedY4*-1;

    //toggle between hues
    if (ball4CurrentHue==ball4Hue1) {
      ball4CurrentHue=ball4Hue2;
    } else { 
      ball4CurrentHue= ball4Hue1;
    }
  }


  //ball1
  noStroke();
  fill(ball1CurrentHue, 100, 100);
  ellipse(ballX1, ballY1, 50, 50);

  //ball2
  noStroke();
  fill(ball2CurrentHue, 100, 100);
  ellipse(ballX2, ballY2, 50, 50);

  //ball3
  noStroke();
  fill(ball3CurrentHue, 100, 100);
  ellipse(ballX3, ballY3, 50, 50);

  //ball4
  noStroke();
  fill(ball4CurrentHue, 100, 100);
  ellipse(ballX4, ballY4, 50, 50);
}
