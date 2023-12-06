class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getmyCenterX();
    myCenterY = theShip.getmyCenterY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getmyPointDirection();
    accelerate(0.6);
  }
  public void show(){
    fill(#EA4007);
    stroke(#FFED48);
    ellipse((float)myCenterX,(float)myCenterY,8,8);
  }
}
