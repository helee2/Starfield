Particle[] parts;
//your code here
void setup()
{
  size(500,500);
  parts = new Particle[1];
  //your code here
}
void draw()
{
  //your code here
}
class NormalParticle implements Particle
{
  double Parx,Pary,ParSpeed,ParAngle;
  int ParColor;
  NormalParticle()
  {
    Parx = 250;
    Pary = 250;
    ParSpeed = (Math.random() * 10);
    ParAngle = (Math.random() * (2*Math.PI));
    ParColor = color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
  }
  void move()
  {
    Parx = 250 + Math.cos(ParAngle) * ParSpeed;
    Pary = 250 + Math.sin(ParAngle) * ParSpeed;
  }
  void show()
  {
    fill(ParColor);
    ellipse((float)Parx,(float)Pary,20,20);
  }
  //your code here
}
interface Particle
{
  public void move();
  public void show();
  //your code here
}
class OddballParticle implements Particle //uses an interface
{
  public void move()
  {
  }
  public void show()
  {
  }
  //your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
  void show()
  {
  }
  //your code here
}

