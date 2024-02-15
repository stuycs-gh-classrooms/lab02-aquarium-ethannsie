class Starfish extends Animal {
  int w1;
  int h1;
  
   Starfish(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    w1 = 50;
    h1 = 40;
    speed = 3;
    health = 5;
  }
  
   void collide() {
   if (!withinXBound(0, w1, t.tankW)) {
      velocity.x *= -1;
    }
    if (!withinYBound(t.tankH, h1, t.tankH + t.floorH)) { 
      velocity.y *= -1;
    }
  }
  
  boolean boundCheck() {
   return withinXBound(0, w1, t.tankW) && withinYBound(t.tankH, h1, t.tankH + t.floorH); 
  }
  
  void display() {
    if (boundCheck()) {
    image(imgStarfish, location.x, location.y, w1, h1);
    }
  }
  
}
