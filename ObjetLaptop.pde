class ObjetLaptop extends Objet {
  boolean isOn = false;
  
  ObjetLaptop(PVector pos, PVector taille, float epaisseurEcran, float epaisseurClavier) {
    // Ecrant
    add(new Partie(
      new PVector(0, taille.y + epaisseurClavier, 0).add(pos), 
      new PVector(epaisseurEcran, taille.y, taille.z)));
    // Clavier
    add(new Partie(
      new PVector(epaisseurEcran, epaisseurClavier, 0).add(pos), 
      new PVector(taille.x, epaisseurClavier, taille.z)));
  }

  ObjetLaptop(PVector pos, PVector taille, float epaisseurEcran, float epaisseurClavier, color[] couleur) {
    // Ecrant
    add(new Partie(
      new PVector(0, taille.y + epaisseurClavier, 0).add(pos), 
      new PVector(epaisseurEcran, taille.y, taille.z), 
      couleur[0]));
    // Clavier
    add(new Partie(
      new PVector(epaisseurEcran, epaisseurClavier, 0).add(pos), 
      new PVector(taille.x, epaisseurClavier, taille.z), 
      couleur[1]));
  }

  ObjetLaptop(PVector pos, PVector taille, float epaisseurEcran, float epaisseurClavier, PImage[] texture) {
    // Ecrant
    add(new Partie(
      new PVector(0, taille.y + epaisseurClavier, 0).add(pos), 
      new PVector(epaisseurEcran, taille.y, taille.z), 
      texture[0],1,1));
    // Clavier
    add(new Partie(
      new PVector(epaisseurEcran, epaisseurClavier, 0).add(pos), 
      new PVector(taille.x, epaisseurClavier, taille.z), 
      texture[1],1,1));
  }
  
  void switchLight() {
    isOn = !isOn;
    parties.get(0).setEmissive((isOn) ? color(#202020) : color(0));
  }
}
