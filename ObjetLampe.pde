class ObjetLampe extends Objet {
  color[] couleurLampe;
  boolean isOn = true;
  
  ObjetLampe(PVector pos, PVector taille, float angle) {
    // Lampe
    add(new Partie(
      new PVector(0, 0, 0), 
      new PVector(taille.x, taille.y, taille.z), 
      true));
    // Support Muralle
    add(new Partie(
      new PVector(taille.x/6, 0, taille.z/6), 
      new PVector(2*taille.x/3, taille.y/3, 2*taille.z/3), 
      angle));
    moveTo(pos);
  }

  ObjetLampe(PVector pos, PVector taille, float angle, color[] couleur) {
    couleurLampe = couleur;
    // Lampe
    add(new Partie(
      new PVector(0, 0, 0), 
      new PVector(taille.x, taille.y, taille.z), 
      true, 
      couleur[0])
      .setEmissive(couleur[0])
      );
    // Support Muralle
    add(new Partie(
      new PVector(taille.x/6, 0, taille.z/6), 
      new PVector(2*taille.x/3, taille.y/3, 2*taille.z/3), 
      angle, 
      couleur[1])
      .setEmissive(couleur[1])
      );
    moveTo(pos);
  }

  ObjetLampe(PVector pos, PVector taille, float angle, PImage[] texture) {
    // Lampe
    add(new Partie(
      new PVector(0, 0, 0), 
      new PVector(taille.x, taille.y, taille.z), 
      true, 
      texture[0]));
    // Support Muralle
    add(new Partie(
      new PVector(taille.x/6, 0, taille.z/6), 
      new PVector(2*taille.x/3, taille.y/3, 2*taille.z/3), 
      angle, 
      texture[1]));
    moveTo(pos);
  }
  
  void switchLight() {
    isOn = !isOn;
    setEmissive((isOn) ? couleurLampe[0] : color(0));
  }
}
