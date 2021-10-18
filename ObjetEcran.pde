class ObjetEcran extends Objet {
  ObjetEcran(PVector pos, PVector taille, float hauteurEcran, float epaisseurEcran, float epaisseurPied, float angle) {
    // Pied
    add(new Partie(
      new PVector(0, epaisseurPied, taille.z/3), 
      new PVector(taille.x, epaisseurPied, taille.z/3), 
      angle));
    add(new Partie(
      new PVector(0, taille.y - hauteurEcran * 2 + epaisseurPied, taille.z/2 - epaisseurPied), 
      new PVector(epaisseurPied, taille.y - hauteurEcran * 2, epaisseurPied*2), 
      angle));
    // Ecran
    add(new Partie(
      new PVector(epaisseurPied, taille.y, 0), 
      new PVector(epaisseurEcran, taille.y - hauteurEcran, taille.z), 
      angle)
     );
    add(new Partie(
      new PVector(epaisseurPied, hauteurEcran, 0), 
      new PVector(epaisseurEcran + epaisseurEcran/4, epaisseurEcran, taille.z), 
      angle));
    moveTo(pos);
  }

  ObjetEcran(PVector pos, PVector taille, float hauteurEcran, float epaisseurEcran, float epaisseurPied, float angle, color[] couleur) {
    // Pied
    add(new Partie(
      new PVector(0, epaisseurPied, taille.z/3), 
      new PVector(taille.x, epaisseurPied, taille.z/3), 
      angle, 
      couleur[0]));
    add(new Partie(
      new PVector(0, taille.y - hauteurEcran * 2 + epaisseurPied, taille.z/2 - epaisseurPied), 
      new PVector(epaisseurPied, taille.y - hauteurEcran * 2, epaisseurPied*2), 
      angle, 
      couleur[1]));
    // Ecrant
    add(new Partie(
      new PVector(epaisseurPied, taille.y, 0), 
      new PVector(epaisseurEcran, taille.y - hauteurEcran, taille.z), 
      angle, 
      couleur[2])
      .setEmissive(color(#202020))
      );
    add(new Partie(
      new PVector(epaisseurPied, hauteurEcran, 0), 
      new PVector(epaisseurEcran + epaisseurEcran/4, epaisseurEcran, taille.z), 
      angle, 
      couleur[3]));
    moveTo(pos);
  }

  ObjetEcran(PVector pos, PVector taille, float hauteurEcran, float epaisseurEcran, float epaisseurPied, float angle, PImage[] texture) {
    // Pied
    add(new Partie(
      new PVector(0, epaisseurPied, taille.z/3), 
      new PVector(taille.x, epaisseurPied, taille.z/3), 
      angle, 
      texture[0]));
    add(new Partie(
      new PVector(0, taille.y - hauteurEcran * 2 + epaisseurPied, taille.z/2 - epaisseurPied), 
      new PVector(epaisseurPied, taille.y - hauteurEcran * 2, epaisseurPied*2), 
      angle, 
      texture[1]));
    // Ecrant
    add(new Partie(
      new PVector(epaisseurPied, taille.y, 0), 
      new PVector(epaisseurEcran, taille.y - hauteurEcran, taille.z), 
      angle, 
      texture[2]));
    add(new Partie(
      new PVector(epaisseurPied, hauteurEcran, 0), 
      new PVector(epaisseurEcran + epaisseurEcran/4, epaisseurEcran, taille.z), 
      angle, 
      texture[3]));
    moveTo(pos);
  }
}
