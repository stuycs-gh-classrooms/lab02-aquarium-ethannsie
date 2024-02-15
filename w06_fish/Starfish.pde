class Starfish extends Animal {
  PVector location;
  PVector velocity;
  int w1;
  int h1;
  int speed;
  int health;
  
   Starfish(int x, int y) {
    super();
    location = new PVector();
    velocity = PVector.random2D();
    this.location.x = x;
    this.location.y = y;
    w1 = 50;
    h1 = 40;
    speed = 3;
    health = 5;
  }
  
   void collide() {
   if (!withinXBound()) {
      velocity.x *= -1;
    }
    if (!withinYBound()) { 
      velocity.y *= -1;
    }
  }
  
    boolean withinXBound() {
    if (location.x > 0 && location.x+this.w1 < t.tankW) {
     return true; 
    }
    return false;
  }
  
  boolean withinYBound() {
    if (location.y > t.tankH && location.y+this.h1 < t.tankH + t.floorH) { 
      return true;
    }
    return false;
  }
  
  boolean boundCheck() {
   return withinXBound() && withinYBound(); 
  }
    
  void display() {
    if (boundCheck()) {
    image(imgStarfish, location.x, location.y, w1, h1);
    }
  }
  
}
