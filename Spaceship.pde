class Spaceship extends Floater  
{   
    public Spaceship(){
  corners = 6;  //the number of corners, a triangular floater has 3   
  xCorners = new float []{20,-10,-5,-10,-5,-10}; 
  yCorners = new float []{0,-10,-5,0,5,10};
  myColor= color(255,255,255);   
  myCenterX=300;
  myCenterY=300;
  myXspeed=0;
  myYspeed=0;
  myPointDirection=0;  
    }
    public void newCenter(){
      myCenterX = Math.random()*600;
      myCenterY = Math.random()*600;
    }
    public void newPointDirection(){
      myPointDirection = Math.random()*360;
    }
    public void STAHP(){
      myXspeed = 0;
      myYspeed = 0;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public double getXcenter(){
      return myCenterX;
    }
    public double getYcenter(){
      return myCenterY;
    }
}
