class Salmon extends Animal {

  Salmon(int x, int y, int sx, int sy, int r, int g, int b, int speed) {
    super(x, y, sx, sy, r, g, b, speed);
  }

  void collide() {
   if (location.x < 0 || location.x+w1 > width) {
      velocity.x *= -1;
    }
    if (location.y < 50 || location.y+h1 > height-100) { 
      velocity.y *= -1;
    }
  }
}
