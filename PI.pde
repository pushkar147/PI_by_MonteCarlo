/* estimation of value of pi by Monte Carlo method */

float x, y, pi;
int totalDots, insideDots;
color backgroundColor=160;
boolean playFlag;

void setup()
{
  size(800, 500);
  background(backgroundColor);
  translate(250, 250);
  fill(255);
  stroke(0);
  strokeWeight(1);
  rectMode(CENTER);
  rect(0, 0, 400, 400);
  ellipse(0, 0, 400, 400);
  fill(200, 0, 100);
  textSize(22);
  textAlign(RIGHT, BOTTOM);
  text("Pushkaraj", 545, 245);

  totalDots=0;
  insideDots=0;
  playFlag=false;
}

void draw()
{
  if (playFlag)
  {
    translate(250,250);
    stroke(0, 0, 255);
    x=random(400)-200;
    y=random(400)-200;
    point(x, y);
    if (withinCircle())
    {
      insideDots++;
    }
    totalDots++;
    pi=4.0*insideDots/totalDots;

    fill(200, 200, 255);
    stroke(0);
    strokeWeight(1);
    rectMode(CENTER);
    rect(400, 0, 240, 400);
    fill(0, 0, 255);
    textSize(14);
    textAlign(CENTER, CENTER);
    text("Number of dots inside circle=\n", 400, -160);
    text(insideDots, 400, -120);
    text("Total number of dots=\n", 400, -40);
    text(totalDots, 400, 0);
    text("Estimated value of pi=\n", 400, 80);
    text(str(pi), 400, 120);
  }
}

boolean withinCircle()
{
  if ((x*x+y*y)<=40000)
    return true;
  else
    return false;
}

void mouseClicked()
{
  if (playFlag)
    playFlag=false;
  else
    playFlag=true;
}