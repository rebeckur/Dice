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
		rollNum = (int)(Math.random()*6)+1;

		int topX = myX + 30;
		int centerY = myY + 25;
		int topY = myY + 10;
		//your code here
		fill(0);
		if (rollNum == 6){
			//ellipse(myX+10, topY, 5, 5);
		} else if (rollNum == 5){
			ellipse(myX+10, topY, 5, 5);
			ellipse(myX+30, topY, 5, 5);
		} else if (rollNum == 4){
			
		} else if (rollNum == 3){

		} else if (rollNum == 2){

		} else {
			ellipse(myX+25, topY, 5, 5);
		}
		
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 50, 50);
		roll();
		

	}
}
