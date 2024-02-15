class crab extends Animal {
  
   crab(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    w1 = 30;
    h1 = 30;
    speed = 6;
    health = 15;
  }
  
    // OVERRIDE COLLIDE - controlled for its bounds
   void collide() {
   if (!withinXBound(0, w1, tankW)) {
      velocity.x *= -1;
    }
    if (!withinYBound(tankH, h1, tankH + floorH)) { 
      velocity.y *= -1;
    }
  }
  
  // OVERRIDE CHECK FOR SPAWNING
  boolean boundCheck() {
   return withinXBound(0, w1, tankW) && withinYBound(tankH, h1, tankH + floorH); 
  }
    
  // OVERRIDE TO USE PNG
  void display() {
    image(imgCrab, location.x, location.y, w1, h1);
    
  }
}
