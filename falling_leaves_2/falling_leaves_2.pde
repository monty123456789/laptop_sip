  int leavesC = 200;
  //PVector gravity, velocity, wind, movement, position;
 // ArrayList<LeavesSystem> leaves;
  LeavesSystem nl;
  int radius = 20;
  float edge;

  void setup() {
    size(600,400);
   // leaves = new ArrayList<LeavesSystem>();
    nl = new LeavesSystem(100, 100);
  }
  
  void draw() {
    background(0);
  
    //for(LeavesSystem nl : leaves) {
       
      nl.run();
      nl.addLeaves();
         
  }
  
  
  //void mousePressed() {
  //  leaves.add(new LeavesSystem(mouseX, mouseY));
  //}
 
    
    

    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
