class ObjetLit extends Objet {
  ObjetLit (PVector pos, PVector taille, float epaisseurTable, float epaisseurPied, float epaisseurMatelas) {
    pos.add(0, taille.y, 0);
    // Matelas
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurMatelas, taille.z)));
    // Planche
    add(new Partie(
      new PVector(0, - epaisseurMatelas, 0).add(pos), 
      new PVector(taille.x, epaisseurTable, taille.z)));
    // Pied
    add(new Partie(
      new PVector(0, - epaisseurMatelas - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied)));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurMatelas - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied)));
    add(new Partie(
      new PVector(0, - epaisseurMatelas - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied)));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurMatelas - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied)));
  }

  ObjetLit (PVector pos, PVector taille, float epaisseurTable, float epaisseurPied, float epaisseurMatelas, color[] couleur) {
    pos.add(0, taille.y, 0);
    // Matelas
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurMatelas, taille.z), 
      couleur[0]));
    // Planche
    add(new Partie(
      new PVector(0, - epaisseurMatelas, 0).add(pos), 
      new PVector(taille.x, epaisseurTable, taille.z), 
      couleur[1]));
    // Pied
    add(new Partie(
      new PVector(0, - epaisseurMatelas - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      couleur[2]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurMatelas - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      couleur[3]));
    add(new Partie(
      new PVector(0, - epaisseurMatelas - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      couleur[4]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurMatelas - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      couleur[5]));
  }

  ObjetLit (PVector pos, PVector taille, float epaisseurTable, float epaisseurPied, float epaisseurMatelas, PImage[] texture) {
    pos.add(0, taille.y, 0);
    // Matelas
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurMatelas, taille.z), 
      texture[0]));
    // Planche
    add(new Partie(
      new PVector(0, - epaisseurMatelas, 0).add(pos), 
      new PVector(taille.x, epaisseurTable, taille.z), 
      texture[1]));
    // Pied
    add(new Partie(
      new PVector(0, - epaisseurMatelas - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      texture[2]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurMatelas - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      texture[3]));
    add(new Partie(
      new PVector(0, - epaisseurMatelas - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      texture[4]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurMatelas - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable - epaisseurMatelas, epaisseurPied), 
      texture[5]));
  }
}
