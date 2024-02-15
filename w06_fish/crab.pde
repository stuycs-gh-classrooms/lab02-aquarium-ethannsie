class crab extends Animal {
  PVector location;
  int w1;
  int h1;
  int speed;
  PVector velocity;
  int health;
  
   crab(int x, int y) {
    super();
    location = new PVector();
    velocity = PVector.random2D();
    this.location.x = x;
    this.location.y = y;
    w1 = 15;
    h1 = 15;
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
    if (location.x > 0 && location.x+w1 < t.tankW) {
     return true; 
    }
    return false;
  }
  
  boolean withinYBound() {
    if (location.y > t.tankH && location.y < t.tankH + t.floorH) { 
      return true;
    }
    return false;
  }
  
  boolean boundCheck() {
   return withinXBound() && withinYBound(); 
  }
    
  void display() {
    if (boundCheck()) {
    image(imgCrab, location.x, location.y, w1, h1);
    }
  }
}
