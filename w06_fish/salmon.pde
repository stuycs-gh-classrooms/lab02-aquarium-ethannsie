class Salmon extends Animal {

   Salmon(int x, int y) {
    super();
    location = new PVector(x, y);
    velocity = PVector.random2D();
    imgSalmon = loadImage("salmon.png");
    w1 = 30;
    h1 = 20;
    speed = 6;
    health = 2;
  }

  // OVERRIDE COLLIDE - controlled for its bounds
  void wallCollide() {
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
  
  // OVERRIDE FOR DEATH MECHANISM
  void death() {
     if (health == 0 && ALIVE) {
       imgSalmon = loadImage("deadsalmon.png");
       velocity = new PVector(0, -1, 0);
       speed = 1;
       ALIVE = false;
       }
  }
  
  // OVERRIDE TO HELP WITH DEATH MECH
   void move() {
   if (ALIVE) {
            location.add(velocity.x * speed, velocity.y * speed);
        } else {
            location.y += velocity.y * speed;
            if (location.y <= tankY) { 
                location.y = tankY;
                velocity.y = 0;
            }
        }
   }
        
  // OVERRIDE FOR DISPLAY PNG
  void display() {
    image(imgSalmon, location.x, location.y, w1, h1);
  }

}
