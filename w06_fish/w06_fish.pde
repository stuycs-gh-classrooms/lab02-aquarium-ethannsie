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

void setup() {
  size(600, 600);
   tankX = 0;
   tankY = 50;
   floorH = 100;
   STARFISH = 49;
   FISH = 50;
   CRAB = 51;
   SALMON = 52;
  tankW = width;
  tankH = height - 100;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

//void mouseClicked() {
//  t.addFish(mouseX, mouseY);
//}

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
  
