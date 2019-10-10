
Die array[]= new Die[22];
int x = 0;
int y = 0;
int count = 0;
PFont font;
void setup()
{
  noLoop();
  background(50,90, 150);
  size(840,400);
}


void draw()
{

  for(int j = 0; j<7; j++)
  {
    y = y+35;
    for(int i = 0; i<22; i++)
    {
      x = x+35;
      
      array[i] = new Die(x,y);
      array[i].roll();
      array[i].show();
      count = count + array[i].random;
 
    }
    x = 0;
  }
  y = 0;
  noStroke();
  fill(20,40,120);
 
  rect(35, 300, 210, 700, 7);
  fill(255);
  font = loadFont("HelveticaNeue-UltraLight-48.vlw");
  textFont(font);
  text("Total: " + count, 45, 350 );
  count = 0;
}
void mousePressed()
{
  redraw();
  
}
class Die //models one single dice cube
{
  //variable declarations here
  int random;
  int random2;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }

  void roll()
  {
    random = (int)(Math.random()*6 +1);
    random2 = (int)(Math.random()*2);
    
  }
  void show()
  {
    //die rectangle
    fill(0);
    rect(myX, myY, 30, 30, 7);//your code here
   
    
    //dots
    
    //middle dot
    fill(255);
    if(random%2!=0)
    {
      
      ellipse(myX+15,myY+15,5,5);
    }
    
    //greater than three has four diagonal
    if(random>3)
    {
          fill(255);
          ellipse(myX+5,myY+5,5,5);
          ellipse(myX+25,myY+25,5,5); 
          ellipse(myX+5,myY+25,5,5);
          ellipse(myX+25,myY+5,5,5);
          
    }
    
    if(random==6)
    {
      ellipse(myX+5, myY+15,5,5);
      ellipse(myX+25, myY+15,5,5);
    } 
    //numbers less than 4
    
    else if(random<4)
    {
      if(random%3==0)
      {
        
        if(random2==0)
        {
          ellipse(myX+5,myY+5,5,5);
          ellipse(myX+25,myY+25,5,5);
        }
        else
        {
          ellipse(myX+5,myY+25,5,5);
          ellipse(myX+25,myY+5,5,5);
        }
          
      }
    
    //greater than four has four dots in corners
      if(random%2==0)
      {
            if(random2==0)
            {
              ellipse(myX+5,myY+25,5,5);
              ellipse(myX+25,myY+5,5,5);
            }
            else
            {
              ellipse(myX+5,myY+5,5,5);
              ellipse(myX+25,myY+25,5,5);
            }
        }
            
       }

  }
}
