class fish extends Animal{
  PVector location;
  int w1;
  PVector velocity;
  int h1;
  int speed;
  int health;
  
   fish(int x, int y) {
    super();
    location = new PVector();
    this.location.x = x;
    velocity = PVector.random2D();
    this.location.y = y;
    w1 = 20;
    h1 = 20;
    speed = 6;
    health = 7;
  }
  
  void collide() {
   if (!withinXBound()) {
      velocity.x *= -1;
    }if (!withinYBound()) { 
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
    image(imgFish, location.x, location.y, w1, h1);
    }
  }
  
}
