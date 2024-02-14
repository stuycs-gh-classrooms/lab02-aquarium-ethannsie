class Starfish extends Animal {
  Starfish(int x, int y, int sx, int sy, int speed, int health) {
    super(x, y, sx, sy, speed, health);
  }
  
   void collide() {
   if (location.x < 0 || location.x+w1 > width) {
      velocity.x *= -1;
    }
    if (location.y < height-100 || location.y+h1 > height) { 
      velocity.y *= -1;
    }
  }
  
}
