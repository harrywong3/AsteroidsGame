class Star 
{
  protected int spaceX, spaceY, size, flash;
  public Star(){
    spaceX= (int)(Math.random()*600);
    spaceY= (int)(Math.random()*600);
    size = (int)(Math.random()*5+5);
    flash= color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show(){
    fill(flash);
    ellipse(spaceX, spaceY, size, size);
  }
}
