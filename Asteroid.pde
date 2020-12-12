class Asteroid extends Floater{
  
  private double spinSpeed;
  public Asteroid(){
    spinSpeed= Math.random()*3-1.5;
    corners = 4;   
    xCorners = new float []{15,10,-5,-10}; 
    yCorners = new float []{15,-10,-10,10};
    myColor= color(255);   
    myCenterX=Math.random()*600;
    myCenterY=Math.random()*600;   
    myXspeed=Math.random()*2-1;
    myYspeed=Math.random()*2-1;    
    myPointDirection= 0; 
  }
  public void move(){
    turn(spinSpeed);
    super.move();
  }
    public double getXcenter(){
      return myCenterX;
    }
    public double getYcenter(){
      return myCenterY;
    }
}
