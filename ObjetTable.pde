class ObjetTable extends Objet {
  ObjetTable (PVector pos, PVector taille, float epaisseurTable, float epaisseurPied) {
    pos.add(0, taille.y, 0);
    // Planche
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurTable, taille.z)));
    // Pied
    add(new Partie(
      new PVector(0, - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied)));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied)));
    add(new Partie(
      new PVector(0, - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied)));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied)));
  }

  ObjetTable (PVector pos, PVector taille, float epaisseurTable, float epaisseurPied, color[] couleur) {
    pos.add(0, taille.y, 0);
    // Planche
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurTable, taille.z), 
      couleur[0]));
    // Pied
    add(new Partie(
      new PVector(0, - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      couleur[1]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      couleur[2]));
    add(new Partie(
      new PVector(0, - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      couleur[3]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      couleur[4]));
  }

  ObjetTable (PVector pos, PVector taille, float epaisseurTable, float epaisseurPied, PImage[] texture) {
    pos.add(0, taille.y, 0);
    // Planche
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurTable, taille.z), 
      texture[0]));
    // Pied
    add(new Partie(
      new PVector(0, - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      texture[1]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurTable, 0).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      texture[2]));
    add(new Partie(
      new PVector(0, - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      texture[3]));
    add(new Partie(
      new PVector(taille.x - epaisseurPied, - epaisseurTable, taille.z - epaisseurPied).add(pos), 
      new PVector(epaisseurPied, taille.y - epaisseurTable, epaisseurPied), 
      texture[4]));
  }
}
