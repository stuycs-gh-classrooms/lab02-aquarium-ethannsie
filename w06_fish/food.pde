class food extends Animal {

  food(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    w1 = 10;
    h1 = 10;
    speed = 8;
  }
  
  // OVERRIDE COLLIDE - controlled for its bounds
  void collide() {
   if (!withinXBound(0, w1, tankW)) {
      velocity.x *= -1;
    }if (!withinYBound(tankY, h1, tankH+floorH)) { 
      velocity.y *= -1;
    }
  }
  
  // OVERRIDE CHECK FOR SPAWNING  
  boolean boundCheck() {
   return withinXBound(0, w1, tankW) && withinYBound(tankY, h1, tankH); 
  }
  
  
}
