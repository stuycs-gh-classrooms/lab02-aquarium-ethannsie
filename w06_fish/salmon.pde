class Salmon extends Animal {

   Salmon(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    w1 = 30;
    h1 = 20;
    speed = 6;
    health = 20;
  }

  // OVERRIDE COLLIDE - controlled for its bounds
  void collide() {
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
  
  // OVERRIDE FOR DISPLAY PNG
  void display() {
    image(imgSalmon, location.x, location.y, w1, h1);
    
  }

}
