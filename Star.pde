class Star extends Floater
{
 // int myColor;
  public Star() {
    setMyXY(Math.random()*width, Math.random()*height);
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float)getX(), (float)getY(), 5, 5);
  }
  public void setMyXY(double x_, double y_) {
   myCenterX = x_;
   myCenterY = y_;
  myColor = color(255, 255, 255, (float)Math.random()*255);
  }
  public double getX() {
   return myCenterX;
  }
    public double getY() {
   return myCenterY;
  }
  public int getC() {
   return myColor;
  }
}
