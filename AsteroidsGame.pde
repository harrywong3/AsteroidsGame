Spaceship Mrpew;
Star[] universe;
int Score;
ArrayList <Asteroid> bam= new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
void setup(){
  size(600,600);
  background(0);
  Mrpew= new Spaceship();
  universe= new Star[75];
  for (int i=0; i<universe.length; i++)
    universe[i]=new Star();
  for (int i=0; i<9; i++)
  bam.add(new Asteroid());
}
void draw(){
  background(0);
  for (int i=0; i<universe.length; i++){
    universe[i].show();
  }
  Mrpew.move();
  Mrpew.show();
  for (int i=0; i<bam.size();i++){
  bam.get(i).move();
  bam.get(i).show();
  if(dist((float)Mrpew.getXcenter(),(float)Mrpew.getYcenter(),(float)bam.get(i).getXcenter(),(float)bam.get(i).getYcenter())<=36){
    bam.remove(i);
    Score++;
  }
  text("Kill Count: " + Score, 500, 25);
  }
  
  for (int i=0; i<pew.size(); i++){
  if(pew.get(i).iGuessTheyNeverMissHuh==false){
    pew.get(i).move();
    pew.get(i).show();
  }
  for (int b=0; b<bam.size();b++){
  if(dist((float)pew.get(i).getXcenter(),(float)pew.get(i).getYcenter(),(float)bam.get(b).getXcenter(),(float)bam.get(b).getYcenter())<=16&&pew.get(i).iGuessTheyNeverMissHuh==false)
  {
  bam.remove(b);//figure out how to check distance between two objects in two different ArrayLists.
  pew.get(i).iGuessTheyNeverMissHuh=true;;
  Score++;
}
}
}
  if (bam.size()==0)text("Asteroid are Now Extinct, Happy?", 200,300);
}

public void keyPressed(){
    if(key=='a'){
    Mrpew.turn(-6);
    }
    else if(key=='d'){
    Mrpew.turn(6);
    }
    if(key=='w'){
    Mrpew.accelerate(.4);
    }
    else if(key=='s'){
    Mrpew.accelerate(-.4);
    }
    if(key=='q')
    {
      Mrpew.newCenter();
      Mrpew.STAHP();
      Mrpew.newPointDirection();
      for (int i=0; i<universe.length; i++){
      universe[i]=new Star();
      for (int a=0; a<bam.size(); a++)
      bam.set(a,new Asteroid());
      }
    }
    if (key== ' ')
    {
      pew.add(new Bullet());
    }
    if (key== 'r'){
    for (int i=0; i<9; i++)
    bam.add(new Asteroid());
    }
}
