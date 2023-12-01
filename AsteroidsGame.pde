Spaceship bob = new Spaceship();
Star [] sky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
  {
    size(600,600);
    for (int i = 0; i < sky.length; i++){
      sky[i] = new Star();
    }
    for (int i = 0; i <= 8; i++){
      rocks.add(new Asteroid());
    }
  }
public void draw() 
  {
    background(0);
    stroke(#F27FE7);
    text("myCenterX: " + (int)bob.getmyCenterX(), 2,10);
    text("myCenterY: " + (int)bob.getmyCenterY(), 2,20);
    text("myPointDirection: " + bob.getmyPointDirection(), 2,30);
    text("myXspeed: " + bob.getmyXspeed(), 2,40);
    text("myYspeed: " + bob.getmyYspeed(), 2,50);
    for (int i = 0; i < sky.length; i++){
      sky[i].show();
    }
    bob.move();
    bob.show();
    
    for (int i = 0; i < rocks.size(); i++){
      rocks.get(i).show();
      rocks.get(i).move();
      float d = dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if(d<10)
        rocks.remove(i);
    }
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
