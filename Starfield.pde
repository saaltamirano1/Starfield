Particle [] stars = new Particle[200];
void setup()
{
  size(600,600);
  noStroke();
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Particle();
    stars[0] = new OddBallParticle();
  }
}
void draw()
{
  background(0,0,0);
   for(int i = 0; i<stars.length; i++){
    stars[i].move();
    stars[i].show();
   }
}

class Particle
{
   double myX, myY, mySize, mySpeed, myAngle;
   int myColor;
    Particle()
    {
     myX = 300;
     myY = 300;
     mySize = (double)(Math.random()*5);
     mySpeed = (double)(Math.random()*2);
     myAngle = (double)(Math.random()*2*Math.PI);
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
    void show()
   {
     fill(myColor);
     ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
   }
    void move()
    {
     myX = myX + (Math.cos(myAngle)*mySpeed);
     myY = myY + (Math.sin(myAngle)*mySpeed);
     if(myX>600 || myX<0){
       myX = 300;
       myY = 300;
     }if(myY>600 || myY<0){
       myY = 300;
       myX = 300;
   }
   }
}

class OddBallParticle extends Particle
{
 int myOpacity;
   OddBallParticle()
   {
     myX = 300;
     myY = 300;
     mySize = 30;
     mySpeed = (double)(Math.random()*3);
     myAngle = (double)(Math.random()*2*Math.PI);
     myColor = color(255,255,255);
     myOpacity = 50;
   }
   void show()
   {
     fill(myColor, myOpacity);
     rect((int)myX,(int)myY,(int)mySize,(int)mySize);
   }
   void move()
   {
     myX = myX + (Math.cos(myAngle)*mySpeed);
     myY = myY + (Math.sin(myAngle)*mySpeed);
     if(myX>600 || myX<0){
       myX = 300;
       myY = 300;
     }if(myY>600 || myY<0){
       myY = 300;
       myX = 300;
   }
 }
}
