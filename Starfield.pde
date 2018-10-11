Particle[] parts;
//your code here
void setup()
{
  size(800,800);
  parts = new Particle[300];
  for (int i = 0; i < 300; i++)
  {
    parts[i] = new NormalParticle();
  }
  parts[0] = new OddballParticle();
  parts[1] = new JumboParticle();
  //your code here
}
void draw()
{
  background(0);
  for (int i = 0; i < 300; i++)
  {
    parts[i].move();
    parts[i].show();
  }
  //your code here
}
class NormalParticle implements Particle
{
  double Parx,Pary,ParSpeed,ParAngle;
  int ParColor;
  NormalParticle()
  {
    Parx = 400;
    Pary = 400;
    ParSpeed = (Math.random() * 5);
    ParAngle = (Math.random() * (2*Math.PI));
    ParColor = color(255);
  }
  public void move()
  {
    Parx = Parx + Math.cos(ParAngle) * ParSpeed;
    Pary = Pary + Math.sin(ParAngle) * ParSpeed;
  }
  public void show()
  {
    fill(ParColor);
    ellipse((float)Parx,(float)Pary,10,10);
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
  double Oddx,Oddy,OddSpeed,OddAngle;
  int OddColor;
  OddballParticle()
  {
    Oddx = 400;
    Oddy = 400;
    OddSpeed = (Math.random() * 5);
    OddAngle = (Math.random() * (2*Math.PI));
    OddColor = color(255);
  }
  public void move()
  {
    Oddx = Oddx + Math.cos(OddAngle) * OddSpeed;
    Oddy = Oddy + Math.sin(OddAngle) * OddSpeed;
  }
  public void show()
  {
    fill(OddColor);
    rect((float)Oddx,(float)Oddy,50,50);
  }
  //your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
  void show()
  {
    ellipse((float)Parx,(float)Pary,100,100);
  }
  //your code here
}