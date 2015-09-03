void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
	//your code here
	for (int i = 10; i < 400; i+=80){
		Die me = new Die(i, 50);
		me.roll();
		me.show();
	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY;

	int rollNum;

	Die (int x, int y) 
	{
		myX = x;
		myY = y;
	} //constructor
	void roll()
	{
		//your code here
		if ((int)(Math.random()*6)+1 == 6){
			rollNum = 6;
		}
		
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 60, 60);
		text(rollNum, 50, 50);

	}
}
