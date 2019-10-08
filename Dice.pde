Die dice = new Die(x,y);
void setup()
{
	noLoop();
	size (600,300);
}
void draw()
{
	for(int y = 20; y<280; y++)//your code here
	{
		for(int x = 20; x<580; x++)
		{
			die.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	int myX, intY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		int random = Math.random()*6 +1;
		if(random%2!=0)
		{
			ellipse(myX+5,myY+5,2,2);
		}
	}
	void show()
	{
		rect(x, y, 10, 10, 7);//your code here
	}
}
