class Star //note that this class does NOT extend Floater
{
  private int starColor, myX, myY;
  public Star() 
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    starColor = color((int)(Math.random()*200)+60, (int)(Math.random()*200)+60, (int)(Math.random()*200)+60);
  }
  public void show()
  {
    fill(starColor);
    ellipse(myX, myY, 3.5, 3.5);aa
  }
}
