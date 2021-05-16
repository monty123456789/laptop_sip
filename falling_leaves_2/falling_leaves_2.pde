  LeavesSystem nl;
  int leavesC = 200;
  //PVector gravity, velocity, wind, movement, position;
  ArrayList<LeavesSystem> leaves;
  
  int radius = 20;
  float edge;

  void setup() {
    size(600,400);
    nl = new LeavesSystem(100,100);
   
  }
  
  void draw() {
    background(0);
    
    int r;
  
    nl.run();
    nl.addLeaves();
  }
    
    
    
    
    
    
    

    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
