class ObjetArmoire extends Objet {
  ObjetArmoire(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche) {
    this(pos, taille, epaisseurPlanche, angle, nombrePlanche, false);
  }

  ObjetArmoire(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche, color[] couleur) {
    this(pos, taille, epaisseurPlanche, angle, nombrePlanche, false, couleur);
  }

  ObjetArmoire(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche, PImage[] texture) {
    this(pos, taille, epaisseurPlanche, angle, nombrePlanche, false, texture);
  }

  ObjetArmoire(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche, boolean isMirrored) {
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
      new PVector(0, taille.y, 0), new PVector(taille.x, epaisseurPlanche, taille.z), 
      angle));
    // Planche
    for (int i = 0; i < nombrePlanche; i++) {
      add(new Partie(
        new PVector(epaisseurPlanche, i * ((taille.y) / nombrePlanche) + epaisseurPlanche, epaisseurPlanche), 
        new PVector(taille.x - epaisseurPlanche*2, epaisseurPlanche, taille.z - epaisseurPlanche*2), 
        angle));
    }
    // Porte 
    add(new Partie(
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z -epaisseurPlanche), 
      new PVector(taille.x - epaisseurPlanche*2, taille.y - epaisseurPlanche, epaisseurPlanche), 
      angle));
    // Poigné
    add(new Partie(
      new PVector((isMirrored ? taille.x - epaisseurPlanche*4 : epaisseurPlanche*3), taille.y/2, taille.z), 
      new PVector(epaisseurPlanche, epaisseurPlanche, epaisseurPlanche/3), 
      angle));
    add(new Partie(
      new PVector((isMirrored ? taille.x - epaisseurPlanche*7 : epaisseurPlanche*7), taille.y/2, taille.z + epaisseurPlanche/3), 
      new PVector((isMirrored ? 1 : -1) * epaisseurPlanche*4, epaisseurPlanche, epaisseurPlanche/3), 
      angle));
    moveTo(pos);
  }

  ObjetArmoire(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche, boolean isMirrored, color[] couleur) {
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
        new PVector(taille.x - epaisseurPlanche*2, epaisseurPlanche, taille.z - epaisseurPlanche*2), 
        angle, 
        couleur[4]));
    }
    // Porte 
    add(new Partie(
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z -epaisseurPlanche), 
      new PVector(taille.x - epaisseurPlanche*2, taille.y - epaisseurPlanche, epaisseurPlanche), 
      angle, 
      couleur[5]));
    // Poigné
    add(new Partie(
      new PVector((isMirrored ? taille.x - epaisseurPlanche*4 : epaisseurPlanche*3), taille.y/2, taille.z), 
      new PVector(epaisseurPlanche, epaisseurPlanche, epaisseurPlanche/3), 
      angle, 
      couleur[6]));
    add(new Partie(
      new PVector((isMirrored ? taille.x - epaisseurPlanche*7 : epaisseurPlanche*7), taille.y/2, taille.z + epaisseurPlanche/3), 
      new PVector((isMirrored ? 1 : -1) * epaisseurPlanche*4, epaisseurPlanche, epaisseurPlanche/3), 
      angle, 
      couleur[7]));
    moveTo(pos);
  }

  ObjetArmoire(PVector pos, PVector taille, float epaisseurPlanche, float angle, int nombrePlanche, boolean isMirrored, PImage[] texture) {
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
        new PVector(taille.x - epaisseurPlanche*2, epaisseurPlanche, taille.z - epaisseurPlanche*2), 
        angle, 
        texture[4]));
    }
    // Porte 
    add(new Partie(
      new PVector(epaisseurPlanche, taille.y - epaisseurPlanche, taille.z -epaisseurPlanche), 
      new PVector(taille.x - epaisseurPlanche*2, taille.y - epaisseurPlanche, epaisseurPlanche), 
      angle, 
      texture[5]));
    // Poigné
    add(new Partie(
      new PVector((isMirrored ? taille.x - epaisseurPlanche*4 : epaisseurPlanche*3), taille.y/2, taille.z), 
      new PVector(epaisseurPlanche, epaisseurPlanche, epaisseurPlanche/3), 
      angle, 
      texture[6]));
    add(new Partie(
      new PVector((isMirrored ? taille.x - epaisseurPlanche*7 : epaisseurPlanche*7), taille.y/2, taille.z + epaisseurPlanche/3), 
      new PVector((isMirrored ? 1 : -1) * epaisseurPlanche*4, epaisseurPlanche, epaisseurPlanche/3), 
      angle, 
      texture[7]));
    moveTo(pos);
  }
}
