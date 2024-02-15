class food {
  PVector location;
  PVector velocity;
  int x;
  int y;
  int w1;
  int h1;
  color inside;
  int speed;
  
  food(int x, int y, int sx, int sy, int r, int g, int b, int speed) {
  location = new PVector(x, y);
  velocity = PVector.random2D();
  this.w1 = sx;
  this.h1 = sy;
  this.inside = color(r, g, b);
  this.speed = speed;
  }
  
  void display() {
    fill(inside);
    rect(location.x, location.y, w1, h1);
  }
  
  void collide() {
   location.add(velocity.x*speed, velocity.y*speed);
   if (location.x < 0 || location.x+w1 > width) {
      velocity.x *= -1;
    }
    if (location.y < 50 || location.y+h1 > height) { 
      velocity.y *= -1;
    }
  }
  
  void move() {
    location.add(velocity.x*speed, velocity.y*speed);
  }
  
  
}
