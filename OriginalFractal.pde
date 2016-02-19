PImage photo;
public void setup()
{
size(500,500);
photo = loadImage("chillindude.jpg");
}
public void draw()
{

background(250,250,250);
fill(0,0,0);
myFractal(250,250,480);
fill(0,0,0);
myFractal2(250,250,480);
fill(0,0,0);
myFractal3(250,250,480);
fill(250,0,0);
myFractal1(250,250,480);
image(photo,140,340);
textSize(30);
text("MY", 115,100);
textSize(30);
text("B", 345,100);
}
public void myFractal(int x, int y,int siz)
{

triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);
triangle(x+siz/2, y-siz/2, x-siz/2, y-siz/2, x, y+siz/2);

}
public void myFractal1(int x, int y,int siz)
{

triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);

	if(siz>50)
	{
	pushMatrix();
	translate(x-siz/2,y);
	rotate(-PI/6);
	myFractal1(0,0,siz/2);
	popMatrix();

	pushMatrix();
	translate(x+siz/2,y);
	rotate(PI/6);
	myFractal1(0,0,siz/2);
	popMatrix();
	}
	
}
public void myFractal2(int x, int y,int siz)
{

triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);

	if(siz>100)
	{
	pushMatrix();
	translate(x+siz/2,y);
	rotate(-PI/6);
	myFractal2(0,0,siz/2);
	popMatrix();

	pushMatrix();
	translate(x+siz/2,y);
	rotate(PI/6);
	myFractal2(0,0,siz/2);
	popMatrix();
	}	
}
public void myFractal3(int x, int y,int siz)
{

triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);
	
	if(siz>100)
	{
	pushMatrix();
	translate(x-siz/2,y);
	rotate(-PI/6);
	myFractal3(0,0,siz/2);
	popMatrix();

	pushMatrix();
	translate(x-siz/2,y);
	rotate(PI/6);
	myFractal3(0,0,siz/2);
	popMatrix();	
	}	
}