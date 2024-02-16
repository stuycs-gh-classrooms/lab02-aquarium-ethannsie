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
  
   void addAnimal(int x, int y, int TYPE) {
     if (TYPE == FISH) {
      animalList.add(new fish(x, y));
      } else if (TYPE == CRAB) {
      animalList.add(new crab(x, y));
       } else if (TYPE == STARFISH) {
      animalList.add(new Starfish(x, y));
       } else if (TYPE == SALMON) {
      animalList.add(new Salmon(x, y));
      } else if (TYPE == FOOD) {
      animalList.add(new food(x, y));
      }
     if (!animalList.get(animalList.size()-1).boundCheck()) {
       animalList.remove(animalList.size()-1);
     } else {
       animalList.get(animalList.size()-1).index = animalList.size()-1; 
     }
   }
   
   void collision() {
    for (int i = 0; i < animalList.size()-1; i++) {
      for (int j = i; j < animalList.size(); j++) {
       if (animalList.get(i).objectCollide(animalList.get(j))) {
         
       }
      }
    }
   }
   
   void updateAnimals() {
    for (int i = 0; i < animalList.size(); i++) {
      animalList.get(i).move();
      animalList.get(i).drainHealth();
      animalList.get(i).death();
      animalList.get(i).wallCollide(); 
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
  

  

  

}
