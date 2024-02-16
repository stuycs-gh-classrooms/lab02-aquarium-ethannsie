class food extends Animal {
  // This is abstractly called food, but this represents some microorganism which 
  // does not require much to survive and is a constant food source that can be
  // entered into the ecosystem via clicks
  food(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    w1 = 10;
    h1 = 10;
    speed = 8;
    health = Integer.MAX_VALUE;
  }
  
  // OVERRIDE COLLIDE - controlled for its bounds
  void wallCollide() {
   if (!withinXBound(0, w1, tankW)) {
      velocity.x *= -1;
    }if (!withinYBound(tankY, h1, tankH+floorH)) { 
      velocity.y *= -1;
    }
  }
  
  // OVERRIDE CHECK FOR SPAWNING  
  boolean boundCheck() {
   return withinXBound(0, w1, tankW) && withinYBound(tankY, h1, floorH + tankH); 
  }
  
  
}
