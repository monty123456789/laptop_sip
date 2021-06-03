
Vehicles2 V;

PVector target;
PVector begin = new PVector(width/2, height/2);

Independent I;
float r = random(1, 4);


void setup() {
  background(0);
  size(720, 480);
  V = new Vehicles2(new PVector(width/2, height/2));
  I = new Independent();
}

void draw() {
  background(0);
  target = new PVector(mouseX, mouseY);
  
  V.run();
  V.addVehicles();  
 // V.update();
 // V.visible();
  //V.follow(target);
 // I.update();
 // I.wall();
 // V.visible();
 ////I.edge(random(-3, 3), random(-1, -3), random(1, 3));
  
}
