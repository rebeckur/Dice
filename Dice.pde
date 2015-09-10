void setup()
{
	noLoop();
	size(400,450);
}
void draw()
{
	background(155,155,155);
	for (int j = 15; j < 400; j+=55){
		for (int i = 10; i < 370; i+=55){
			Die me = new Die(i, j);
			me.show();
		}
	}

}
void mousePressed()
{
	redraw();
}
class Die
{
	int myX;
	int myY;

	int rollNum;

	//for the colors!
	int randR = (int)(Math.random()*150)+100;
	int randG = (int)(Math.random()*60);
	int randB = (int)(Math.random()*106)+100;

	int total;

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

		fill(randR, randG, randB);

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
			total = total + 6;
		} else if (rollNum == 5){
			//top 2 dots
			ellipse(x, topY, 5, 5); //left
			ellipse(x+20, topY, 5, 5); //right
			//center dot
			ellipse(centerX, centerY, 5, 5);
			//lower 2 dots
			ellipse(x, bottomY, 5, 5); //left
			ellipse(x+20, bottomY, 5, 5); //right
			total +=5;
		} else if (rollNum == 4){
			//top 2 dots
			ellipse(x, topY, 5, 5); //left
			ellipse(x+20, topY, 5, 5); //right
			//lower 2 dots
			ellipse(x, bottomY, 5, 5); //left
			ellipse(x+20, bottomY, 5, 5); //right
			total +=4;
		} else if (rollNum == 3){
			//top dot
			ellipse(x+20, topY, 5, 5); //right
			//center dot
			ellipse(centerX, centerY, 5, 5);
			//bottom dot
			ellipse(x, bottomY, 5, 5); //left
			total +=3;
		} else if (rollNum == 2){
			//top dot
			ellipse(x+20, topY, 5, 5); 
			//bottom dot
			ellipse(x, bottomY, 5, 5);
			total +=2;
		} else {
			//center dot
			ellipse(myX+25, centerY, 5, 5);
			total++;
		}
	}
	void show()
	{
		fill(255);
		stroke(4);
		rect(myX, myY, 50, 50); //dice body

		roll();	//calling the roll
		
		fill(255);
		textSize(18);
	}
}
