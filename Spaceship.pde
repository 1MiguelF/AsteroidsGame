class Spaceship extends Floater
{
  public Spaceship() {
    corners = 3;
    xCorners = new int[] {0, -8, 8};
    yCorners = new int[] {-10, 10, 10};
    setMyXY(width/2, height/2);
  }
  public void setXspeed(double x_) {
    myXspeed = x_;
  }
  public void setYspeed(double y_) {
    myYspeed = y_;
  }
  public void setDir(double d_) {
   myPointDirection = d_; 
  }
  public void incXspeed(int d_) {
    myXspeed += d_;
  }
  public void incYspeed(int d_) {
    myYspeed += d_;
  }
  
  public void hyperspace() {
    setXspeed(0);
    setYspeed(0);
    setMyXY((int)(Math.random()*width), (int)(Math.random()*height));
    setDir(Math.random()*360);
  }
  public void setMyXY(double x_, double y_) {
   myCenterX = x_;
   myCenterY = y_;
   myColor = color(255, 0, 0, 255);
   setXspeed(0);
   setYspeed(0);
   myPointDirection = 0;
  }
}
