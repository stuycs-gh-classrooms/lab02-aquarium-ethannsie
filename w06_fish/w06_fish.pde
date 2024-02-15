Tank t;
int tankX;
int tankY;
int floorH;
int tankW;
int tankH;
int STARFISH;
int FISH;
int CRAB;
int SALMON;
int FOOD;
PImage imgStarfish;
PImage imgSalmon;
PImage imgFish;
PImage imgCrab; 

void setup() {
  size(600, 600);
  imgStarfish = loadImage("Starfish.png");
   imgSalmon = loadImage("salmon.png");
   imgFish = loadImage("fish.png");
   imgCrab = loadImage("crab.png"); 
   frameRate(30);
   tankX = 0;
   tankY = 50;
   floorH = 100;
   FOOD = 1;
   STARFISH = 49;
   FISH = 50;
   CRAB = 51;
   SALMON = 52;
  tankW = width;
  tankH = height - floorH;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  //t.aliveTimer();
  //t.drainHealth();
  //t.deathGeneral();
  t.display();
  //try {
  //if (t.animalList.get(0).hunger > 0) {
  //println("Animal 0: " + t.animalList.get(0).hunger);
  //println("Animal 1: " + t.animalList.get(1).timeAlive);
  //}
  //println("Animal 2: " + t.animalList.get(2).hunger);
  //println("Animal 3: " + t.animalList.get(3).hunger);

  //} catch (Exception IndexOutOfBoundsException) {
    
  //}
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY, FOOD);
}

void keyPressed() {
  if (key == char(STARFISH)) {
    t.addAnimal(mouseX, mouseY, STARFISH);
  } else if (key == char(FISH)) {
    t.addAnimal(mouseX, mouseY, FISH);
  } else if (key == char(CRAB)) {
    t.addAnimal(mouseX, mouseY, CRAB); 
  } else if (key == char(SALMON)) {
   t.addAnimal(mouseX, mouseY, SALMON); 
  }
  }
  
