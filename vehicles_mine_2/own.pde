//Vehicles V;

class Independent {
  PVector velocity, acceleration, position;
  float maxspeed = 4;
  float maxforce = .2;
  int e = 10;
  float x = -1, y = 0;
  //float pos = random(1, 3);
  //float neg = random(-1, -3);
  

  
  
  Independent() {
    velocity = new PVector();
    position = new PVector(width/2, height/2);
    acceleration = new PVector(x, y);
    //V = new Vehicles(width/2, height/2);
    
    
  }
  
  void update() {
    
    //println(either);
    move();
    //edge();
    display();
  //  V.update();
  //V.visible();
  //V.follow(position);
  }
  
  void move() {
   
    velocity.add(acceleration).limit(maxspeed);
    position.add(velocity);
  }
  
  void wall() {
    PVector desired = new PVector(maxspeed, velocity.y);
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);
    acceleration.add(steer);
  }  
    
  void edge(float either, float neg, float pos) {
    acceleration.set(x, y);
    if (position.x < 0 + e) {
      x = pos;
       y = either;
    } else if (position.x > width - e) {
      x = neg;
      y = either;
    } else if (position.y < 0 + e) {
      x = either;
       y = pos;
    } else if (position.y > height - e) {
      x = either;
      y = neg;
    }
    
    
  }
  
  void display() {
    fill(255);
    circle(position.x, position.y, 10);
  }
}
