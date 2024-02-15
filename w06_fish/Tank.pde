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
  
  // is this more information than tank should have?
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
     }
   }
   
   void moveAnimals() {
    for (int i = 0; i < animalList.size(); i++) {
      animalList.get(i).move();
      animalList.get(i).collide(); 
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
  
  //void drainHealth() {
  //   for (int i = 0; i < animalList.size(); i++) {
  //     if (animalList.get(i).timeAlive%5 == 0 && animalList.get(i).hunger > 0) {
  //     animalList.get(i).hunger -= 1; 
  //     }
  //   }
  //}
  
  //void aliveTimer() {
  // for (int i = 0; i < animalList.size(); i++) {
  //  if (frameCount%150 == 0) {
  //    println("hi: " + frameCount);
  //   animalList.get(i).timeAlive += 1; 
  //  }
  // }
  //}
  

  

}
