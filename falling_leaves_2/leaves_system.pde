class LeavesSystem {
  ArrayList<Leaves> leavesN;
  PVector origin;
  
   
  LeavesSystem(float x, float y) {
   leavesN = new ArrayList<Leaves>();
   origin = new PVector(x,y);
  }


  void addLeaves() {
    leavesN.add(new Leaves(origin.x, origin.y));
  }
  

  void run() {
    for (int i = leavesN.size()-1; i >= 0; i--) {
      Leaves n = leavesN.get(i);
      n.run();
      if (n.isDead()) {
        leavesN.remove(i);
      }
    }
   }
}
  
