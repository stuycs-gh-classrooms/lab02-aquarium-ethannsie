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
     }
   }
   
void collision() {
    ArrayList<Animal> toBeRemoved = new ArrayList<>();
    
    for (int i = 0; i < animalList.size() - 1; i++) {
        for (int j = i + 1; j < animalList.size(); j++) {
            Animal a1 = animalList.get(i);
            Animal a2 = animalList.get(j);
            if ((!a1.ALIVE || !a2.ALIVE) || (a1 instanceof food && a2 instanceof food)) {
             continue; 
            }
            if (a1.objectCollide(a2)) {
                if (a1 instanceof food) {
                    a1.DISPLAY = false;
                    toBeRemoved.add(a1);
                    a2.health += 5; 
                }
                if (a2 instanceof food) {
                    a2.DISPLAY = false;
                    toBeRemoved.add(a2);
                    a1.health += 5;
                }
            }
        }
    }
    
      animalList.removeAll(toBeRemoved);
}

   
   void updateAnimals() {
    for (int i = 0; i < animalList.size(); i++) {
      animalList.get(i).move();
      animalList.get(i).drainHealth();
      animalList.get(i).death();
      animalList.get(i).wallCollide(); 
      collision();
    }
  }

  void display() {
    background(200);
    fill(0, 255, 255);
    rect(tankX, tankY, tankW, height-floorH);
    fill(194, 178, 128);
    rect(tankX, tankH, tankW, height-tankH);
    for (int i = 0; i < animalList.size(); i++) {
      if (animalList.get(i).DISPLAY) {
     animalList.get(i).display(); 
      }
    }
  }
  

  

  

}
