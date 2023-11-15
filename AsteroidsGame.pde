Spaceship bob = new Spaceship();
Star [] sky = new Star[200];
public void setup() 
  {
    size(600,600);
    for (int i = 0; i < sky.length; i++){
      sky[i] = new Star();
    }
  }
public void draw() 
  {
    background(0);
    text("myCenterX: " + bob.getmyCenterX(), 10,10);
    text("myCenterY: " + bob.getmyCenterY(), 10,20);
    text("myPointDirection: " + bob.getmyPointDirection(), 10,30);
    text("myXspeed: " + bob.getmyXspeed(), 10,40);
    text("myYspeed: " + bob.getmyYspeed(), 10,50);
    for (int i = 0; i < sky.length; i++){
      sky[i].show();
    }
    bob.move();
    bob.show();
  }
public void keyPressed()
{
  if(key == 'w')
    bob.accelerate(10);
  if(key == 'a')
    bob.turn(-10);
  if(key == 'd')
    bob.turn(10);
  if(key == ' ')
    bob.hyperspace();
}
