int r = 10;
int g = 10; //  They are stored as 32 bits of information
int b = 10;

void setup() 
{
  size(800,800); // this determine the size of the board
  background(1000); // determine the color of the background.
}


void draw() // make it draw
{
 
  fill(r,g,b); // change the color of the as want.
  noStroke();
  rect(0,0,100,12);
  fill(204, 102, 0); 
  text((r + "," + g + "," + b),10,10); // color changing buttons

  if(key == 'r')
  {
    r++;
    key = ' ';
    if(r > 255)
    {
      r = 0;
    }
  } //g= green r=red b=blue
  
  else if(key == 'g')
  {
    g++;
    key = ' ';
    if(g > 255)
    {
      g = 0;
    }
  }
  
  
  else if(key == 'b')
  {
    b++;
    key = ' ';
    if(b > 255)
    {
      b = 0;
    }
  }
}

void mouseDragged() // follow the mouse 
{
  if(mouseButton == LEFT)
  {
     strokeWeight(10); // decides the size of the pen
     stroke(r,g,b); // color of the pen 
     line(pmouseX, pmouseY, mouseX, mouseY); // allow the mouse to go around
  }
}

void mousePressed() // strenght of the mouse.
{
 if(mouseButton == RIGHT)
 {
  background(255); // the color of the background.
 }
}