class Animal{
  PVector location;
  PVector velocity;
  PImage img;
  int speed;
  int health;
  int timeAlive;
  int w1;
  int h1;
  int ALIVE;
  int DEAD;

  
  //Animal(int ax, int ay, int w1, int h1, int r, int g, int b, int speed, int hunger) {
  //  location = new PVector(ax, ay);
  //  velocity = PVector.random2D();
  //  this.w1 = w1;
  //  this.h1 = h1;
  //  this.speed = speed;
  //  this.r = r;
  //  this.g = g;
  //  this.b = b;
  //  inside = color(r, g, b);
  //  ALIVE = 1;
  //  DEAD = 0;
  //}
  
   Animal() {
}
  
  // defaulted to within the tank
  void collide() {
   if (!withinXBound(0, w1, width)) {
      velocity.x *= -1;
    }
    if (!withinYBound(tankY, h1, height)) { 
      velocity.y *= -1;
    }
  }
  
  void move() {
    location.add(velocity.x*speed, velocity.y*speed);
  }

  
  //void deathGeneral() {
  // for (int i = 0; i < animalList.size(); i++) {
  //   if (animalList.get(i).hunger == 0) {
  //      animalList.get(i).speed = 0; 
  //     }
  // } 
  //}
  
  // checks whether each animal is within their own specified boundaries
  boolean withinXBound(int lowX, int w1, int highX) {
    if (location.x > lowX && location.x+w1 < highX) {
     return true; 
    }
    return false;
  }
  
  boolean withinYBound(int lowY, int h1, int highY) {
    if (location.y > lowY && location.y+h1 < highY) { 
      return true;
    }
    return false;
  }
  
  // defaulted to a rectangle display
  void display() {
   fill(0, 255, 0);
   rect(location.x, location.y, w1, h1); 
  }
  
  // defaulted in superclass
  boolean boundCheck() {
   return withinXBound(0, w1, tankW) && withinYBound(tankH, h1, tankH + floorH); 
  }
  
  }
