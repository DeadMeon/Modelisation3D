class Partie {
  PShape shape;


  Partie(PVector position, PVector taille, float angle, boolean isSphere) {
    if (isSphere)
      shape = createShape(SPHERE, (taille.x + taille.y + taille.z)/6);
    else
      shape = createShape(BOX, taille.x, taille.y, taille.z);

    shape.translate(position.x + taille.x/2, - position.y + taille.y/2, position.z + taille.z/2);
    shape.rotateY(angle);
    shape.setStroke(color(0, 30));
  }

  Partie(PVector position, PVector taille, float angle, boolean isSphere, PImage texture, int u, int v) {
    if (isSphere)
      shape = createShape(SPHERE, (taille.x + taille.y + taille.z)/6);
    else {
      shape = createShape();
      TexturedCube( shape, taille, u, v, texture);
    }
    shape.translate(position.x + taille.x/2, - position.y + taille.y/2, position.z + taille.z/2);
    shape.rotateY(angle);
    shape.setStroke(color(0, 30));
  }
  
  Partie(PVector position, PVector taille, float angle, boolean isSphere, PImage texture) {
    this(position, taille, angle, isSphere, texture, 4, 3);
  }

  Partie(PVector position, PVector taille, float angle, boolean isSphere, color couleur) {
    this(position, taille, angle, isSphere);
    shape.setShininess(200);
    shape.setSpecular(255);
    shape.setFill(couleur);
  }

  Partie(PVector position, PVector taille) {
    this(position, taille, 0, false);
  }

  Partie(PVector position, PVector taille, float angle) {
    this(position, taille, angle, false);
  }

  Partie(PVector position, PVector taille, boolean isSphere) {
    this(position, taille, 0, isSphere);
  }

  Partie(PVector position, PVector taille, PImage texture) {
    this(position, taille, 0, false, texture);
  }

  Partie(PVector position, PVector taille, color couleur) {
    this(position, taille, 0, false, couleur);
  }

  Partie(PVector position, PVector taille, float angle, PImage texture) {
    this(position, taille, angle, false, texture);
  }

  Partie(PVector position, PVector taille, float angle, color couleur) {
    this(position, taille, angle, false, couleur);
  }

  Partie(PVector position, PVector taille, boolean isSphere, PImage texture) {
    this(position, taille, 0, isSphere, texture);
  }

  Partie(PVector position, PVector taille, boolean isSphere, color couleur) {
    this(position, taille, 0, isSphere, couleur);
  }
  
  Partie(PVector position, PVector taille, PImage texture, int u, int v) {
    this(position, taille, 0, false, texture, u, v);
  }



  void moveTo(PVector position) {
    shape.translate(position.x, - position.y, position.z);
  }
  
  void returnToCenter(PVector position) {
    shape.translate(- position.x, position.y, - position.z);
  }

  void show() {
    shape(shape);
  }
  
  Partie setEmissive(color c) {
    shape.setEmissive(c);
    return this;
  }
  
  Partie setShininess(float f) {
    shape.setShininess(f);
    return this;
  }
  
  Partie setSpecular(color c) {
    shape.setSpecular(c);
    return this;
  }
  
  Partie setAmbiant(color c) {
    shape.setAmbient(c);
    return this;
  }


  void TexturedCube(PShape shape, PVector taille, int coefRepetitionX, int coefRepetitionY, PImage tex) {
    float x = taille.x/2;
    float y = taille.y/2;
    float z = taille.z/2;
    int u = coefRepetitionX;
    int v = coefRepetitionY;
    shape.beginShape(QUADS);
    shape.texture(tex);

    // +Z "front" face
    shape.vertex(-1 * x, -1 * y, 1 * z, 0 * u, 0 * v);
    shape.vertex( 1 * x, -1 * y, 1 * z, 1 * u, 0 * v);
    shape.vertex( 1 * x, 1 * y, 1 * z, 1 * u, 1 * v);
    shape.vertex(-1 * x, 1 * y, 1 * z, 0 * u, 1 * v);

    // -Z "back" face
    shape.vertex( 1 * x, -1 * y, -1 * z, 0 * u, 0 * v);
    shape.vertex(-1 * x, -1 * y, -1 * z, 1 * u, 0 * v);
    shape.vertex(-1 * x, 1 * y, -1 * z, 1 * u, 1 * v);
    shape.vertex( 1 * x, 1 * y, -1 * z, 0 * u, 1 * v);

    // +Y "bottom" face
    shape.vertex(-1 * x, 1 * y, 1 * z, 0 * u, 0 * v);
    shape.vertex( 1 * x, 1 * y, 1 * z, 1 * u, 0 * v);
    shape.vertex( 1 * x, 1 * y, -1 * z, 1 * u, 1 * v);
    shape.vertex(-1 * x, 1 * y, -1 * z, 0 * u, 1 * v);

    // -Y "top" face
    shape.vertex(-1 * x, -1 * y, -1 * z, 0 * u, 0 * v);
    shape.vertex( 1 * x, -1 * y, -1 * z, 1 * u, 0 * v);
    shape.vertex( 1 * x, -1 * y, 1 * z, 1 * u, 1 * v);
    shape.vertex(-1 * x, -1 * y, 1 * z, 0 * u, 1 * v);

    // +X "right" face
    shape.vertex( 1 * x, -1 * y, 1 * z, 0 * u, 0 * v);
    shape.vertex( 1 * x, -1 * y, -1 * z, 1 * u, 0 * v);
    shape.vertex( 1 * x, 1 * y, -1 * z, 1 * u, 1 * v);
    shape.vertex( 1 * x, 1 * y, 1 * z, 0 * u, 1 * v);

    // -X "left" face
    shape.vertex(-1 * x, -1 * y, -1 * z, 0 * u, 0 * v);
    shape.vertex(-1 * x, -1 * y, 1 * z, 1 * u, 0 * v);
    shape.vertex(-1 * x, 1 * y, 1 * z, 1 * u, 1 * v);
    shape.vertex(-1 * x, 1 * y, -1 * z, 0 * u, 1 * v);

    shape.endShape();
  }
}
