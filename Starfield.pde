Particle[] parts;
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
}
void draw()
{
  background(0);
  for (int i = 0; i < 300; i++)
  {
    parts[i].move();
    parts[i].show();
  }
}
class NormalParticle implements Particle
{
  double Parx,Pary,ParSpeed,ParAngle;
  int ParColor;
  NormalParticle()
  {
    Parx = 400;
    Pary = 400;
    ParSpeed = (Math.random() * 10);
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
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle
{
  double Oddx,Oddy,OddSpeed,OddAngle;
  int OddColor;
  OddballParticle()
  {
    Oddx = 400;
    Oddy = 400;
    OddColor = color(255);
  }
  public void move()
  {
    Oddx = Oddx + (Math.random() * 5) - 2;
    Oddy = Oddy + (Math.random() * 5) - 2;
  }
  public void show()
  {
    fill(OddColor);
    rect((float)Oddx,(float)Oddy,20,20);
  }
}
class JumboParticle extends NormalParticle
{
  void show()
  {
    ellipse((float)Parx,(float)Pary,100,100);
  }
}