class Starfish extends Animal {

   Starfish(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    w1 = 50;
    h1 = 40;
    speed = 3;
    health = 5;
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
  
  // OVERRIED CHECK FOR SPAWNING
  boolean boundCheck() {
   return withinXBound(0, w1, tankW) && withinYBound(tankH, h1, tankH + floorH); 
  }
  
  // OVERRIDE TO USE PNG
  void display() {
    image(imgStarfish, location.x, location.y, w1, h1);
  }
  
}
