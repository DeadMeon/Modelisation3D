class Objet {
  ArrayList<Partie> parties = new ArrayList<Partie>();
  
  void add(Partie partie) {
     parties.add(parties.size(), partie) ;
  }
  
  void moveTo(PVector pos) {
     for (Partie part : parties) {
        part.moveTo(pos); 
     }
  }
  
  void show() {
     for (Partie part : parties) {
        part.show(); 
     }
  }
  
  void setEmissive(color c) {
    for (Partie part : parties) {
        part.setEmissive(c); 
     }
  }
}
