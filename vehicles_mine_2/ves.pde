class Vehicles2 {
  ArrayList<Vehicles> vehicle;
  PVector origin;
  float m;

  Vehicles2(PVector position) {

    vehicle = new ArrayList<Vehicles>();
    origin = position.copy();
  }

  void addVehicles() {
    if (vehicle.size() < 100) {
      vehicle.add(new Vehicles(origin.x, origin.y));
    }
  }

  void direction() {
  }

  void run() {
    for (int i = vehicle.size()-1; i>= 0; i--) {
      Vehicles v = vehicle.get(i);
      v.run();
      
      if (mousePressed == true) {
        v.follow(target);
        //fill(0, 255, 0);
       // v.c(target, 0, 255, 0);
         
      } else {
        v.afraid(target);
        if (v.position.dist(target) < 100);
          //v.c(target, 0, 0, 255);
          //fill(0, 0, 255);
      }
      
      //if (v.dead()) {
      //  vehicle.remove(i);
      //}
    }
  }
}
