class Salmon extends Animal {
  PVector location;
  int w1;
  int h1;
  PVector velocity;
  int speed;
  int health;
  
   Salmon(int x, int y) {
    super();
    location = new PVector();
    velocity = PVector.random2D();
    this.location.x = x;
    this.location.y = y;
    w1 = 30;
    h1 = 25;
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
    if (location.y > 50 && location.y+h1 < t.tankH) { 
      return true;
    }
    return false;
  }
  
  boolean boundCheck() {
   return withinXBound() && withinYBound(); 
  }
    
  void display() {
    if (boundCheck()) {
    image(imgSalmon, location.x, location.y, w1, h1);
    }
  }
  
}
