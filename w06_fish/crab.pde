class crab extends Animal {
   
    crab(int x, int y, int sx, int sy, int r, int g, int b, int speed) {
    super(x, y, sx, sy, r, g, b, speed);
  }
  
   void collide() {
   location.add(velocity.x*speed, velocity.y*speed);
   if (location.x < 0 || location.x+w1 > width) {
      velocity.x *= -1;
    }
    if (location.y < height-100 || location.y+h1 > height) { 
      velocity.y *= -1;
    }
  }
}
