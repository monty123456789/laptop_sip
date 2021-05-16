class Leaves {
  PVector gravity, velocity, wind, gusts, position;
  float life;
  int edge = 2;
  float x;
  float n;
  float seed;

  Leaves(float x, float y) {
     n = noise(x) * .02;
  
    
    position = new PVector(x, y);
    velocity = new PVector(0, 0); 
    gravity = new PVector(0, .0);
    //wind = new PVector(random(.0, .01), .0);
    gusts = new PVector(n,n);
    println(x);
    life = 400;
  
  }


  void run() {
    update();
    display();
    
    //edges();
  }

  
  void update() {
    velocity.add(gravity).add(gusts); //add(wind).
    position.add(velocity);
    life -= 1;
    x += .01;
  }
   
  
  
  void display() {
    circle(position.x, position.y, 10);
    noStroke();
    //fill(life);
  }


   boolean isDead() {
     if (life < 0.0) {
       return true;
     } else {
       return false;
     }
   }
   
   void edges() {
    if ( position.y >= height-radius) {
      //  //position.y = height-radius;
      velocity.y *= -edge;
    } else if ( position. y <= 0) {
      //position.y = 0;
      velocity.y *= -edge;
    } else if ( position.x >= width) {
      // position.x = width;
      velocity.x *= -edge;
    } else if (position. x <= 0) {
      //position.x = 0;
      velocity.x *= -edge;
    }
  }
  
  
   

}
