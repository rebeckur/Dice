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
	for (int i = 10; i < 400; i+=80){
		Die me = new Die(i, 50);
		me.roll();
		me.show();
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
		//your code here
		if ((int)(Math.random()*6)+1 == 6){
			rollNum = 6;
		}
		
	}
	public void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 60, 60);
		text(rollNum, 50, 50);

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
