class ObjetChambre extends Objet {
  ObjetChambre (PVector pos, PVector taille, float epaisseurMur) {
    // Sol
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurMur, taille.z)));
    // Plafond
    add(new Partie(
      new PVector(0, taille.y + epaisseurMur, 0).add(pos), 
      new PVector(taille.x, epaisseurMur, taille.z)));
    // Mur
    add(new Partie(
      new PVector(- epaisseurMur, taille.y, 0).add(pos), 
      new PVector(epaisseurMur, taille.y, taille.z)));
    add(new Partie(
      new PVector(0, taille.y, taille.z).add(pos), 
      new PVector(taille.x, taille.y, epaisseurMur)));
    add(new Partie(
      new PVector(taille.x, taille.y, 0).add(pos), 
      new PVector(epaisseurMur, taille.y, taille.z)));
    add(new Partie(
      new PVector(0, taille.y, - epaisseurMur).add(pos), 
      new PVector(taille.x, taille.y, epaisseurMur)));
  }

  ObjetChambre (PVector pos, PVector taille, float epaisseurMur, color[] couleur) {
    // Sol
    add(new Partie(
      new PVector(0, 0, 0).add(pos), 
      new PVector(taille.x, epaisseurMur, taille.z), 
      couleur[0]));
    // Plafond
    add(new Partie(
      new PVector(0, taille.y + epaisseurMur, 0).add(pos), 
      new PVector(taille.x, epaisseurMur, taille.z), 
      couleur[1]));
    // Mur
    add(new Partie(
      new PVector(- epaisseurMur, taille.y, 0).add(pos), 
      new PVector(epaisseurMur, taille.y, taille.z), 
      couleur[2]));
    add(new Partie(
      new PVector(0, taille.y, taille.z).add(pos), 
      new PVector(taille.x, taille.y, epaisseurMur), 
      couleur[3]));
    add(new Partie(
      new PVector(taille.x, taille.y, 0).add(pos), 
      new PVector(epaisseurMur, taille.y, taille.z), 
      couleur[4]));
    add(new Partie(
      new PVector(0, taille.y, - epaisseurMur).add(pos), 
      new PVector(taille.x, taille.y, epaisseurMur), 
      couleur[5]));
  }

  ObjetChambre (PVector pos, PVector taille, float epaisseurMur, PImage[] texture) {
    // Sol
    add(new Partie(
      new PVector(-epaisseurMur, 0, -epaisseurMur).add(pos), 
      new PVector(taille.x + epaisseurMur*2, epaisseurMur, taille.z + epaisseurMur*2), 
      texture[0])
      .setShininess(75)
      );
    // Plafond
    add(new Partie(
      new PVector(-epaisseurMur, taille.y + epaisseurMur, -epaisseurMur).add(pos), 
      new PVector(taille.x + epaisseurMur*2, epaisseurMur, taille.z + epaisseurMur*2), 
      texture[1])
      .setShininess(10)
      );
    // Mur
    add(new Partie(
      new PVector(- epaisseurMur, taille.y, - epaisseurMur).add(pos), 
      new PVector(epaisseurMur, taille.y, taille.z + epaisseurMur*2), 
      texture[2])
      .setShininess(10)
    );
    add(new Partie(
      new PVector(- epaisseurMur, taille.y, taille.z).add(pos), 
      new PVector(taille.x + epaisseurMur*2, taille.y, epaisseurMur), 
      texture[3])
      .setShininess(10)
    );
    add(new Partie(
      new PVector(taille.x, taille.y, - epaisseurMur).add(pos), 
      new PVector(epaisseurMur, taille.y, taille.z + epaisseurMur*2), 
      texture[4])
      .setShininess(10)
     );
    add(new Partie(
      new PVector(- epaisseurMur, taille.y, - epaisseurMur).add(pos), 
      new PVector(taille.x + epaisseurMur*2, taille.y, epaisseurMur), 
      texture[5])
      .setShininess(10)
    );
  }
}
