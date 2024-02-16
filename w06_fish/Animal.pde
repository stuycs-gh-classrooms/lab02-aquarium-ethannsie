class Animal{
  PVector location;
  PVector velocity;
  PImage img;
  int speed;
  int health;
  int w1;
  int h1;
  int area;
  int lastDrainTime = millis();
  boolean ALIVE;
  boolean DISPLAY;
  PImage imgStarfish;
  PImage imgSalmon;
  PImage imgFish;
  PImage imgCrab; 
  
   Animal() {
     ALIVE = true;
     area = w1*h1;
     DISPLAY = true;
}
  
  // defaulted to within the tank
  void wallCollide() {
   if (!withinXBound(0, w1, width)) {
      velocity.x *= -1;
    }
    if (!withinYBound(tankY, h1, height)) { 
      velocity.y *= -1;
    }
  }
  
  boolean objectCollide(Animal other) {
    return this.location.y < other.location.y + other.h1 
    && this.location.y + this.h1 > other.location.y 
    && this.location.x < other.location.x + other.w1 
    && this.location.x + this.w1 > other.location.x;
  }
  
  
  void move() {
    location.add(velocity.x*speed, velocity.y*speed);
  }

  
  void death() {
     if (health == 0) {
        speed = 0;
        ALIVE = false;
       }
  }
  
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
  
  // Every 5 seconds, life is drained from the animal
  void drainHealth() {
    int m = millis();
    println(m);
    if (millis() - lastDrainTime >= 5000 && health >= 0) {
       health = health - 1; 
       lastDrainTime = m;
     }}
  
  
  }
