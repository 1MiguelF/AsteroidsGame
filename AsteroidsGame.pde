Spaceship xwing;
Star[] starryNight = new Star[200];
public void setup()
{
  size(1000, 1000);
  for (int i = 0; i < starryNight.length; i++) {
    starryNight[i] = new Star();
  }
  xwing = new Spaceship();
}
public void draw()
{
  background(0);
  for (int i = 0; i < starryNight.length; i++) {
    starryNight[i].show();
  }
  xwing.move();
  xwing.show();
}
public void keyPressed() {
  if (key == 'h') {
    xwing.hyperspace();
  }
  if (key == 'r') {
    xwing.turn(5);
  }
  if (key == 't') {
    xwing.turn(-5);
  }
  if (key == CODED) {
    if (keyCode == UP) {
      xwing.incYspeed(-1);
    } else if (keyCode == DOWN) {
      xwing.incYspeed(1);
    } else if (keyCode == LEFT) {
      xwing.incXspeed(-1);
    } else if (keyCode == RIGHT) {
      xwing.incXspeed(1);
    }
  }
}
