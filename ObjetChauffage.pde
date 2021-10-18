class ObjetChauffage extends Objet {
  ObjetChauffage(PVector pos, PVector taille, float epaisseurAttache, float angle) {
    // Chauffage
    add(new Partie(
      new PVector(epaisseurAttache, taille.y, 0), 
      new PVector(taille.x - epaisseurAttache, taille.y, taille.z), 
      angle));
    // Attache
    add(new Partie(
      new PVector(0, taille.y - taille.y*1/6, taille.z/4 - epaisseurAttache/2), 
      new PVector(epaisseurAttache, taille.y*2/3, epaisseurAttache), 
      angle));
    add(new Partie(
      new PVector(0, taille.y - taille.y*1/6, taille.z*3/4 - epaisseurAttache/2), 
      new PVector(epaisseurAttache, taille.y*2/3, epaisseurAttache), 
      angle));
    moveTo(pos);
  }

  ObjetChauffage(PVector pos, PVector taille, float epaisseurAttache, float angle, color[] couleur) {
    // Chauffage
    add(new Partie(
      new PVector(epaisseurAttache, taille.y, 0), 
      new PVector(taille.x - epaisseurAttache, taille.y, taille.z), 
      angle, 
      couleur[0]));
    // Attache
    add(new Partie(
      new PVector(0, taille.y - taille.y*1/6, taille.z/4 - epaisseurAttache/2), 
      new PVector(epaisseurAttache, taille.y*2/3, epaisseurAttache), 
      angle, 
      couleur[1]));
    add(new Partie(
      new PVector(0, taille.y - taille.y*1/6, taille.z*3/4 - epaisseurAttache/2), 
      new PVector(epaisseurAttache, taille.y*2/3, epaisseurAttache), 
      angle, 
      couleur[2]));
    moveTo(pos);
  }

  ObjetChauffage(PVector pos, PVector taille, float epaisseurAttache, float angle, PImage[] texture) {
    // Chauffage
    add(new Partie(
      new PVector(epaisseurAttache, taille.y, 0), 
      new PVector(taille.x - epaisseurAttache, taille.y, taille.z), 
      angle, 
      texture[0]));
    // Attache
    add(new Partie(
      new PVector(0, taille.y - taille.y*1/6, taille.z/4 - epaisseurAttache/2), 
      new PVector(epaisseurAttache, taille.y*2/3, epaisseurAttache), 
      angle, 
      texture[1]));
    add(new Partie(
      new PVector(0, taille.y - taille.y*1/6, taille.z*3/4 - epaisseurAttache/2), 
      new PVector(epaisseurAttache, taille.y*2/3, epaisseurAttache), 
      angle, 
      texture[2]));
    moveTo(pos);
  }
}
