class Tank {
  ArrayList<Animal> animalList;
  ArrayList<food> foodList;
  int tankX;
  int tankY;
  int tankW;
  int tankH;
  int floorH;
  
  Tank(int tankX, int tankY, int tankW, int tankH, int floorH) {
    this.tankX = tankX;
    this.tankY = tankY;
    this.tankW = tankW;
    this.tankH = tankH;
    this.floorH = floorH;
    animalList = new ArrayList<Animal>();
    foodList = new ArrayList<food>();
  }
  
  Tank() {
  }
    // put code more specifically into subclasses
   void addAnimal(int x, int y, int TYPE) {
     if (TYPE == FISH) {
       int w1 = 40;
       int h1 = 20;
       if (x >= tankX && x + w1 <= tankX + tankW && y >= tankY && y+h1 <= tankH) {
      animalList.add(new fish(mouseX, mouseY, w1, h1, 10, 10));
    }}
     if (TYPE == CRAB) {
       int w1 = 30;
       int h1 = 30;
       if (x >= tankX && x + w1 <= tankX + tankW && y >= tankH && y+h1 <= height) {
      animalList.add(new crab(mouseX, mouseY, w1, h1, 2, 15));
    }}
     if (TYPE == STARFISH) {
       int w1 = 50;
       int h1 = 50;
      if (x >= tankX && x + w1 <= tankX + tankW && y >= tankH && y+h1 <= height) {
      animalList.add(new Starfish(mouseX, mouseY, w1, h1, 7, 20));
        }}
      if (TYPE == SALMON) {
        int w1 = 30;
        int h1 = 20;
         if (x >= tankX && x + w1 <= tankX + tankW && y >= tankY && y+h1 <= tankH) {
      animalList.add(new Salmon(mouseX, mouseY, w1, h1, 5, 10));
    }
      }
   }

  void addFood(int x, int y) {
    int w1 = 10;
    int h1 = 10;
    if (x >= tankX && x + w1 <= tankX + tankW && y >= tankY && y+h1 <= tankH) {
    foodList.add(new food(mouseX, mouseY, w1, h1, 0, 255, 0, 1));
    }
  }
   
   
  void display() {
    background(200);
    fill(0, 255, 255);
    rect(tankX, tankY, tankW, height-floorH);
    fill(194, 178, 128);
    rect(tankX, tankH, tankW, height-tankH);
    for (int i = 0; i < animalList.size(); i++) {
     animalList.get(i).display(); 
    }
    for (int i = 0; i < foodList.size(); i++) {
     foodList.get(i).display(); 
    }
  }
  
  void drainHealth() {
     for (int i = 0; i < animalList.size(); i++) {
       if (animalList.get(i).timeAlive%5 == 0 && animalList.get(i).hunger > 0) {
       animalList.get(i).hunger -= 1; 
       }
     }
  }
  
  void aliveTimer() {
   for (int i = 0; i < animalList.size(); i++) {
    if (frameCount%150 == 0) {
      println("hi: " + frameCount);
     animalList.get(i).timeAlive += 1; 
    }
   }
  }
  
   void moveAnimals() {
    for (int i = 0; i < animalList.size(); i++) {
      animalList.get(i).move();
      animalList.get(i).collide(); 
    }
  }
  
  void moveFood() {
   for (int i = 0; i < foodList.size(); i++) {
    foodList.get(i).move();
    foodList.get(i).collide();
   }
  }
  
  void deathGeneral() {
   for (int i = 0; i < animalList.size(); i++) {
     if (animalList.get(i).hunger == 0) {
        animalList.get(i).speed = 0; 
       }
   } 
  }
  
  
}
