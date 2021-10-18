class ObjetPorte extends Objet {
  boolean isOpen = false; 
  boolean isOpening = false; 
  float angle = 0f;
  int sens;
  
  PVector pos;


  ObjetPorte(PVector pos, PVector taille, float angle) {
    // Porte
    add(new Partie(
      new PVector(taille.z, taille.y - taille.z, 0), 
      new PVector(taille.x - taille.z*2, taille.y - taille.z, taille.z/3), 
      angle));
    // Poigné
    add(new Partie(
      new PVector(taille.x - taille.z*4, taille.y/2, taille.z/3), 
      new PVector(taille.z, taille.z, taille.z/3), 
      angle));
    add(new Partie(
      new PVector(taille.x - taille.z*7, taille.y/2, 2*taille.z/3), 
      new PVector(taille.z*4, taille.z, taille.z/3), 
      angle));
    // Contour
    add(new Partie(
      new PVector(0, taille.y - taille.z, 0), 
      new PVector(taille.z, taille.y - taille.z, taille.z/3), 
      angle));
    add(new Partie(
      new PVector(taille.x - taille.z, taille.y - taille.z, 0), 
      new PVector(taille.z, taille.y - taille.z, taille.z/3), 
      angle));
    add(new Partie(
      new PVector(0, taille.y, 0), 
      new PVector(taille.x, taille.z, taille.z/3), 
      angle));

    
    moveTo(pos);
    this.pos = pos;
  }

  ObjetPorte(PVector pos, PVector taille, float angle, color[] couleur) {
    // Porte
    add(new Partie(
      new PVector(taille.z, taille.y - taille.z, 0), 
      new PVector(taille.x - taille.z*2, taille.y - taille.z, taille.z/3), 
      angle, 
      couleur[0]));
    // Poigné
    add(new Partie(
      new PVector(taille.x - taille.z*4, taille.y/2, taille.z/3), 
      new PVector(taille.z, taille.z, taille.z/3), 
      angle, 
      couleur[4]));
    add(new Partie(
      new PVector(taille.x - taille.z*7, taille.y/2, 2*taille.z/3), 
      new PVector(taille.z*4, taille.z, taille.z/3), 
      angle, 
      couleur[5]));
    // Contour
    add(new Partie(
      new PVector(0, taille.y - taille.z, 0), 
      new PVector(taille.z, taille.y - taille.z, taille.z/3), 
      angle, 
      couleur[1]));
    add(new Partie(
      new PVector(taille.x - taille.z, taille.y - taille.z, 0), 
      new PVector(taille.z, taille.y - taille.z, taille.z/3), 
      angle, 
      couleur[2]));
    add(new Partie(
      new PVector(0, taille.y, 0), 
      new PVector(taille.x, taille.z, taille.z/3), 
      angle, 
      couleur[3]));


    moveTo(pos);
    this.pos = pos;
  }

  ObjetPorte(PVector pos, PVector taille, float angle, PImage[] texture) {
    // Porte
    add(new Partie(
      new PVector(taille.z, taille.y - taille.z, 0), 
      new PVector(taille.x - taille.z*2, taille.y - taille.z, taille.z/3), 
      angle, 
      texture[0]));
    // Poigné
    add(new Partie(
      new PVector(taille.x - taille.z*4, taille.y/2, taille.z/3), 
      new PVector(taille.z, taille.z, taille.z/3), 
      angle, 
      texture[4]));
    add(new Partie(
      new PVector(taille.x - taille.z*7, taille.y/2, 2*taille.z/3), 
      new PVector(taille.z*4, taille.z, taille.z/3), 
      angle, 
      texture[5]));
    // Contour
    add(new Partie(
      new PVector(0, taille.y - taille.z, 0), 
      new PVector(taille.z, taille.y - taille.z, taille.z/3), 
      angle, 
      texture[1]));
    add(new Partie(
      new PVector(taille.x - taille.z, taille.y - taille.z, 0), 
      new PVector(taille.z, taille.y - taille.z, taille.z/3), 
      angle, 
      texture[2]));
    add(new Partie(
      new PVector(0, taille.y, 0), 
      new PVector(taille.x, taille.z, taille.z/3), 
      angle, 
      texture[3]));

    moveTo(pos);
    this.pos = pos;
  }

  void openingDoor() {

    if (isOpening) {
      pushMatrix();
        for (int i = 0; i < 3; i++) {
          parties.get(i).returnToCenter(pos);
          parties.get(i).shape.rotateY(sens * - PI/240);
          parties.get(i).moveTo(pos);
        }
      popMatrix();
      
      angle += sens * PI/240;
    if (angle >= PI/2 - PI/240) {
        isOpening = false;
        isOpen = true;
    } else if (angle <= 0 ) {
        isOpening = false;
        isOpen = false;
    }
    }
  }

  void openDoor() {
    if (!isOpening) {
      if (isOpen) {
        sens = -1;
      } else {
        sens = 1;
      }
      isOpening = true;
    }
  }
}
