void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
	//your code here
	for (int i = 10; i < 370; i+=55){
		for (int j = 15; j < 400; j+=55){
			Die me = new Die(i, j);
			me.show();
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

		//dice positions
		int x = myX + 15;
		int centerY = myY + 25;
		int centerX = myX + 25;
		int topY = myY + 15;
		int bottomY = myY + 35;

		fill(0);

		if (rollNum == 6){
			//top 2 dots
			ellipse(x, topY, 5, 5); //left
			ellipse(x+20, topY, 5, 5); //right
			//center 2 dots
			ellipse(x, centerY, 5, 5); //left
			ellipse(x+20, centerY, 5, 5); //right
			//lower 2 dots
			ellipse(x, bottomY, 5, 5); //left
			ellipse(x+20, bottomY, 5, 5); //right
		} else if (rollNum == 5){
			//top 2 dots
			ellipse(x, topY, 5, 5); //left
			ellipse(x+20, topY, 5, 5); //right
			//center dot
			ellipse(centerX, centerY, 5, 5);
			//lower 2 dots
			ellipse(x, bottomY, 5, 5); //left
			ellipse(x+20, bottomY, 5, 5); //right
		} else if (rollNum == 4){
			//top 2 dots
			ellipse(x, topY, 5, 5); //left
			ellipse(x+20, topY, 5, 5); //right
			//lower 2 dots
			ellipse(x, bottomY, 5, 5); //left
			ellipse(x+20, bottomY, 5, 5); //right
		} else if (rollNum == 3){
			//top dot
			ellipse(x+20, topY, 5, 5); //right
			//center dot
			ellipse(centerX, centerY, 5, 5);
			//bottom dot
			ellipse(x, bottomY, 5, 5); //left
		} else if (rollNum == 2){
			//top dot
			ellipse(x+20, topY, 5, 5); 
			//bottom dot
			ellipse(x, bottomY, 5, 5);
		} else {
			//center dot
			ellipse(myX+25, centerY, 5, 5);
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
