class ObjetEtagere extends Objet {
  ObjetEtagere(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche) {
    // Fond
    add(new Partie(
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, 0), 
      new PVector(taille.x - epaisseurPlanche*2, taille.y - epaisseurPlanche, epaisseurPlanche), 
      angle));
    // Contour
    add(new Partie(
      new PVector(0, taille.y - epaisseurPlanche, 0), 
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z), 
      angle));
    add(new Partie(
      new PVector(taille.x - epaisseurPlanche, taille.y - epaisseurPlanche, 0), 
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z), 
      angle));
    add(new Partie(
      new PVector(0, taille.y, 0), 
      new PVector(taille.x, epaisseurPlanche, taille.z), 
      angle));
    // Planche
    for (int i = 0; i < nombrePlanche; i++) {
      add(new Partie(
        new PVector(epaisseurPlanche, i * ((taille.y) / nombrePlanche) + epaisseurPlanche, epaisseurPlanche), 
        new PVector(taille.x - epaisseurPlanche*2, epaisseurPlanche, taille.z - epaisseurPlanche), 
        angle));
    }
    moveTo(pos);
  }

  ObjetEtagere(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche, color[] couleur) {
    // Fond
    add(new Partie(
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, 0), 
      new PVector(taille.x - epaisseurPlanche*2, taille.y - epaisseurPlanche, epaisseurPlanche), 
      angle, 
      couleur[0]));
    // Contour
    add(new Partie(
      new PVector(0, taille.y - epaisseurPlanche, 0), 
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z), 
      angle, 
      couleur[1]));
    add(new Partie(
      new PVector(taille.x - epaisseurPlanche, taille.y - epaisseurPlanche, 0), 
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z), 
      angle, 
      couleur[2]));
    add(new Partie(
      new PVector(0, taille.y, 0), 
      new PVector(taille.x, epaisseurPlanche, taille.z), 
      angle, 
      couleur[3]));
    // Planche
    for (int i = 0; i < nombrePlanche; i++) {
      add(new Partie(
        new PVector(epaisseurPlanche, i * ((taille.y) / nombrePlanche) + epaisseurPlanche, epaisseurPlanche), 
        new PVector(taille.x - epaisseurPlanche*2, epaisseurPlanche, taille.z - epaisseurPlanche), 
        angle, 
        couleur[4]));
    }
    moveTo(pos);
  }

ObjetEtagere(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche, PImage[] texture) {
  // Fond
    add(new Partie(
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, 0), 
      new PVector(taille.x - epaisseurPlanche*2, taille.y - epaisseurPlanche, epaisseurPlanche), 
      angle, 
      texture[0]));
    // Contour
    add(new Partie(
      new PVector(0, taille.y - epaisseurPlanche, 0), 
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z), 
      angle, 
      texture[1]));
    add(new Partie(
      new PVector(taille.x - epaisseurPlanche, taille.y - epaisseurPlanche, 0), 
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z), 
      angle, 
      texture[2]));
    add(new Partie(
      new PVector(0, taille.y, 0), 
      new PVector(taille.x, epaisseurPlanche, taille.z), 
      angle, 
      texture[3]));
    // Planche
    for (int i = 0; i < nombrePlanche; i++) {
      add(new Partie(
        new PVector(epaisseurPlanche, i * ((taille.y) / nombrePlanche) + epaisseurPlanche, epaisseurPlanche), 
        new PVector(taille.x - epaisseurPlanche*2, epaisseurPlanche, taille.z - epaisseurPlanche), 
        angle, 
        texture[4]));
    }
    moveTo(pos);
  }
}
