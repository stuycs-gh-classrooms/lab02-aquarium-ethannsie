class Starfish extends Animal {
  Starfish(int x, int y, int r, int sx, int sy, int g, int b, int speed) {
    super(x, y, sx, sy, r, g, b, speed);
    img = loadImage("Starfish.png");
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
