float x = 0, y = 510;
float px = 0, py = 510;
int state = 0;

void setup()
{
  size(900, 900);
  background(0);
}

void draw()
{
  stroke(255);
  strokeWeight(1);
  noFill();
  triangle(450, 350, 300, 600, 600, 600);

  strokeWeight(3);
  
  switch (state)
  {
    case 0:
      x+=5;
      y--;
      
      if (x > 404) 
      {
        state++;
        px = x;
        py = y;
      }
      
      break;
      
   case 1:
      x+=3;
      
      if (x > 495)
      {
        state++;
        px = x;
        py = y;
        y = 100;
        x = 900;
      }
      
      break;
      
    case 2:
      y+=2;
      
  }
  
  if (state == 2)
  {
    if (y >= 100 && y < 200)
    {
      stroke(255, 0, 0); //red
    } 
    else if (y >= 200 && y < 300)
    {
      stroke(255, 127, 0); //orange
    } 
    else if (y >= 300 && y < 400)
    {
      stroke(255, 255, 0); //yellow
    } 
    else if (y >= 400 && y < 500)
    {
      stroke(0, 255, 0); //green
    } 
    else if (y >= 500 && y < 600)
    {
      stroke(0, 0, 255); //blue
    } 
    else if (y >= 600 && y < 700)
    {
      stroke(75, 0, 130); //indigo
    } 
    else if (y >= 700 && y <= 800)
    {
      stroke(147, 0, 211); //violet
    }

    //line(px, py, x, y);
    
    if (y > 800)
    {
      background(0);
    }
    
    line(px, py, x, y);
  }
  
  if (state != 2) line(px, py, x, y);
  
  if (state == 2 && y > 800)
  {
    background(0);
    state = 0;
    px = 0; 
    x = 0;
    py = 510;
    y = 510;
  }
}