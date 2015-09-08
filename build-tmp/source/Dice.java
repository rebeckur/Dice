import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

public void setup()
{
	noLoop();
	size(400,400);
}
public void draw()
{
	//your code here
	for (int i = 10; i < 370; i+=55){
		for (int j = 15; j < 400; j+=55){
			Die me = new Die(i, j);
			me.show();
		}
	}

}
public void mousePressed()
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
	public void roll()
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
	public void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 50, 50);
		roll();
		
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
