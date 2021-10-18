class ObjetChaise extends Objet {
  ObjetChaise (PVector pos, PVector taille, float epaisseurDos, float epaisseurAssise, float epaisseurPied) {
    pos.add(0, taille.y, 0);
    add(new Partie(
      new PVector(taille.x - epaisseurDos, 0, 0).add(pos), 
      new PVector(epaisseurDos, taille.y/2, taille.z)));
    // Planche
    add(new Partie(
      new PVector(0, - taille.y/2, 0).add(pos), 
      new PVector(taille.x, epaisseurAssise, taille.z)));
    // Pied
    add(new Partie(
      new PVector(0, - taille.y/2 - epaisseurAssise, 0).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied)));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - taille.y/2 - epaisseurAssise, 0).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied)));
    add(new Partie(
      new PVector(0, - taille.y/2 - epaisseurAssise, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied)));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - taille.y/2 - epaisseurAssise, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied)));
  }

  ObjetChaise (PVector pos, PVector taille, float epaisseurDos, float epaisseurAssise, float epaisseurPied, color[] couleur) {
    pos.add(0, taille.y, 0);
    add(new Partie(
      new PVector(taille.x - epaisseurDos, 0, 0).add(pos), 
      new PVector(epaisseurDos, taille.y/2, taille.z), 
      couleur[0]));
    // Planche
    add(new Partie(
      new PVector(0, - taille.y/2, 0).add(pos), 
      new PVector(taille.x, epaisseurAssise, taille.z), 
      couleur[1]));
    // Pied
    add(new Partie(
      new PVector(0, - taille.y/2 - epaisseurAssise, 0).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      couleur[2]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - taille.y/2 - epaisseurAssise, 0).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      couleur[3]));
    add(new Partie(
      new PVector(0, - taille.y/2 - epaisseurAssise, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      couleur[4]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - taille.y/2 - epaisseurAssise, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      couleur[5]));
  }

  ObjetChaise (PVector pos, PVector taille, float epaisseurDos, float epaisseurAssise, float epaisseurPied, PImage[] texture) {
    pos.add(0, taille.y, 0);
    add(new Partie(
      new PVector(taille.x - epaisseurDos, 0, 0).add(pos), 
      new PVector(epaisseurDos, taille.y/2, taille.z), 
      texture[0]));
    // Planche
    add(new Partie(
      new PVector(0, - taille.y/2, 0).add(pos), 
      new PVector(taille.x, epaisseurAssise, taille.z), 
      texture[1]));
    // Pied
    add(new Partie(
      new PVector(0, - taille.y/2 - epaisseurAssise, 0).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      texture[2]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - taille.y/2 - epaisseurAssise, 0).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      texture[3]));
    add(new Partie(
      new PVector(0, - taille.y/2 - epaisseurAssise, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      texture[4]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - taille.y/2 - epaisseurAssise, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y/2 - epaisseurAssise, epaisseurPied), 
      texture[5]));
  }
}
