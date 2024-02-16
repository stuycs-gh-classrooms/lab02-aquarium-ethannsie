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


void setup() {
  size(600, 600);
  frameRate(60);  
  // Tank Parameters
  tankX = 0;
  tankY = 50; 
  floorH = 100;
  tankW = width;
  tankH = height - floorH;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  // Object KeyCoding
  FOOD = 1;
  STARFISH = 49;
  FISH = 50;
  CRAB = 51;
  SALMON = 52;
}//setup


void draw() {
  background(150);
  t.updateAnimals();
  t.display();
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
  } else if (key == char(FOOD + SALMON)) {
    t.addAnimal(mouseX, mouseY, FOOD);
  }
  }
 
