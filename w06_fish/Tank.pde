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

   void addFish(int x, int y) {
    if (x >= tankX && x + 40 <= tankX + tankW && y >= tankY && y+20 <= tankH) {
      animalList.add(new fish(mouseX, mouseY, 40, 20, 255, 0, 255, 10));
    }
  }
   void addCrab(int x, int y) {
    if (x >= tankX && x + 30 <= tankX + tankW && y >= tankH && y+30 <= height) {
      animalList.add(new crab(mouseX, mouseY, 30, 30, 0, 0, 255, 2));
    }
  }
   void addStarfish(int x, int y) {
    if (x >= tankX && x + 30 <= tankX + tankW && y >= tankH && y+30 <= height) {
      animalList.add(new Starfish(mouseX, mouseY, 30, 30, 0, 0, 255, 2));
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
  
   void moveAnimals() {
    for (int i = 0; i < animalList.size(); i++) {
      animalList.get(i).collide(); 
    }
  }
}
