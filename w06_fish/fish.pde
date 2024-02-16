class fish extends Animal{
  
   fish(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    w1 = 20;
    h1 = 10;
    speed = 8;
    health = 6;
  }
  
  // OVERRIDE COLLIDE - controlled for its bounds
  void wallCollide() {
   if (!withinXBound(0, w1, tankW)) {
      velocity.x *= -1;
    }if (!withinYBound(tankY, h1, tankH)) { 
      velocity.y *= -1;
    }
  }
  
  // OVERRIDE CHECK FOR SPAWNING  
  boolean boundCheck() {
   return withinXBound(0, w1, tankW) && withinYBound(tankY, h1, tankH); 
  }
  
  // OVERRIDE FOR EACH IMAGE
  void display() {
    image(imgFish, location.x, location.y, w1, h1);
    
  }
  
}
