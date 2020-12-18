class Bullet extends Floater
{
  private boolean iGuessTheyNeverMissHuh;
 public Bullet (){
   myCenterX= Mrpew.getXcenter();
   myCenterY= Mrpew.getYcenter();
   myPointDirection = Mrpew.getDirection();
   accelerate(10);
   iGuessTheyNeverMissHuh=false;
 }
public void show(){ellipse((float)myCenterX, (float)myCenterY, 7,7);}
public void move ()
  {            
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getXcenter(){return myCenterX;}
  public double getYcenter(){return myCenterY;}
}
