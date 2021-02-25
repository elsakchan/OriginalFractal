public void setup()
{
  size(600, 600);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(300, 300, 300);
}
public void myFractal(int x, int y, int z)
{
  stroke(115, 49, 119);
  rect(x, y, z, z);
  if(z > 10)
  {
    myFractal(x-z/2, y, z/2);
    fill(200, 160, 160);
    myFractal(x+z/2, y, z/2);
    fill(180, 115, 115);
    myFractal(x, y-z/2, z/2);
    fill(150, 70, 70);
    myFractal(x, y+z/2, z/2);
    fill(120, 50, 50);
  }
}
