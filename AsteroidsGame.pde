Spaceship Mrpew;
Star[] universe;
public void setup() 
{
  size(600,600);
  background(0);
  Mrpew= new Spaceship();
  universe= new Star[75];
  for (int i=0; i<universe.length; i++){
    universe[i]=new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<universe.length; i++){
    universe[i].show();
  }
  Mrpew.move();
  Mrpew.show();
}
public void keyPressed(){
    if(key=='a'){
    Mrpew.turn(-9);
    }
    else if(key=='d'){
    Mrpew.turn(9);
    }
    else if(key=='w'){
    Mrpew.accelerate(.7);
    }
    else if(key=='s'){
    Mrpew.accelerate(-.7);
    }
    else if(key=='q')
    {
      Mrpew.newCenter();
      Mrpew.STAHP();
      Mrpew.newPointDirection();
      for (int i=0; i<universe.length; i++){
      universe[i]=new Star();
      }
    }
}

