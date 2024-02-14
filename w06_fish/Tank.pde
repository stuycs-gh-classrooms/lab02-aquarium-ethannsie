class Tank {
  ArrayList<Animal> animalList;
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
  }
  
  Tank() {
  }

   void addAnimal(int x, int y, int TYPE) {
     if (TYPE == FISH) {
       int w1 = 40;
       int h1 = 20;
       if (x >= tankX && x + w1 <= tankX + tankW && y >= tankY && y+h1 <= tankH) {
      animalList.add(new fish(mouseX, mouseY, w1, h1, 255, 0, 255, 10, 10));
    }}
     if (TYPE == CRAB) {
       int w1 = 30;
       int h1 = 30;
       if (x >= tankX && x + w1 <= tankX + tankW && y >= tankH && y+h1 <= height) {
      animalList.add(new crab(mouseX, mouseY, w1, h1, 0, 0, 255, 2, 15));
    }}
     if (TYPE == STARFISH) {
       int w1 = 50;
       int h1 = 50;
      if (x >= tankX && x + w1 <= tankX + tankW && y >= tankH && y+h1 <= height) {
      animalList.add(new Starfish(mouseX, mouseY, w1, h1, 3, 20));
        }}
      if (TYPE == SALMON) {
        int w1 = 30;
        int h1 = 20;
         if (x >= tankX && x + 40 <= tankX + tankW && y >= tankY && y+20 <= tankH) {
      animalList.add(new Salmon(mouseX, mouseY, w1, h1, 23, 230, 54, 5, 10));
    }
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
      println("hi");
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
  
  void deathGeneral() {
   for (int i = 0; i < animalList.size(); i++) {
     if (animalList.get(i).hunger == 0) {
        animalList.get(i).speed = 0; 
       }
   } 
  }
  
  
}
