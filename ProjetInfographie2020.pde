ObjetTable table;
ObjetLampe lampe;
ObjetChambre chambre;
ObjetLaptop laptop;
ObjetChaise chaise;
ObjetEcran ecran;
ObjetLit lit;
ObjetChauffage chauffage;
ObjetPorte porte;
ObjetEtagere etagere;
ObjetArmoire armoire1;
ObjetArmoire armoire2;

float camX, camY, camZ ;
float cibleX, cibleY, cibleZ;
boolean isLightOn;

boolean isRoomDisplayed = true;
float speedMouv = 10;
float speedAngle = 0.001;
float rayon = 10;
float rotationAngle = 0;
float elevationAngle = 0;

PShader shaderColor;
PShader shaderTexture;





void setup() {
  fullScreen(P3D);
  pixelDensity(displayDensity());
  frameRate(60);
  textureWrap(REPEAT);
  textureMode(NORMAL);
  shaderColor = loadShader("shaderColorFragment.glsl", "shaderColorVertex.glsl");
  shaderTexture = loadShader("shaderTextureFragment.glsl", "shaderTextureVertex.glsl");

  camX = 100;
  camY = - 100;
  camZ = 100;
  cibleX = camX;
  cibleY = camY;
  cibleZ = camZ + rayon;
  
  isLightOn = true;

  PImage[] textureChambre = new PImage[] { loadImage("black-wood-textures.jpg"), loadImage("wall-white-texture.jpg"), loadImage("brick-texture.jpg"), loadImage("wall-white-texture.jpg"), loadImage("wall-white-texture.jpg"), loadImage("wall-white-texture.jpg")};
  chambre =  new ObjetChambre(new PVector(0, 0, 0), new PVector(300, 250, 350), 10, textureChambre);

  color[] colorLampe = new color[] {color(#FDF5E6), color(#FFFFFF)};
  lampe = new ObjetLampe(new PVector(150, 250, 175), new PVector(20, 20, 20), 0, colorLampe);

  color[] colorTable = new color[] {color(#CEAF87), color(164, 116, 73), color(164, 116, 73), color(164, 116, 73), color(164, 116, 73)};
  table = new ObjetTable(new PVector(0, 0, 200), new PVector(75, 75, 150), 5, 5, colorTable);

  PImage[] textureLaptop = new PImage[] {loadImage("fond-ecran.jpg"), loadImage("clavier-laptop.jpg")};
  laptop = new ObjetLaptop(new PVector(3, 75, 225), new PVector(35, 35, 50), 1, 2, textureLaptop);

  color[] colorChaise = new color[] {color(164, 116, 73),color(164, 116, 73),color(#575e5f),color(#575e5f),color(#575e5f),color(#575e5f),};
  chaise = new ObjetChaise(new PVector(40, 0, 260), new PVector(40, 100, 40), 2, 2, 2, colorChaise);

  color[] colorEcran = new color[] {color(#303030), color(#303030),color(#101010),color(#303030)};
  ecran = new ObjetEcran(new PVector(0, 75, 300), new PVector(8, 40, 50), 10, 2, 4, PI/6.0, colorEcran);

  color[] colorLit = new color[] {color(#FCFCFC), color(#8F0B0B), color(#8F0B0B), color(#8F0B0B),color(#8F0B0B),color(#8F0B0B),};
  lit = new ObjetLit(new PVector(210, 0, 150), new PVector(90, 45, 200), 5, 5, 20, colorLit);

  color[] colorChauffage = new color[] {color(#FFFFFF), color(#CED2D7), color(#CED2D7)};
  chauffage = new ObjetChauffage(new PVector(120, 20, 350), new PVector(10, 30, 60), 3, HALF_PI, colorChauffage);

  color[] colorPorte = new color[] {color(#FAFAFA), color(#f9e8d2), color(#f9e8d2), color(#f9e8d2), color(#CED2D7), color(#CED2D7)};
  porte = new ObjetPorte(new PVector(300, 0, 0), new PVector(90, 200, 4), HALF_PI*3, colorPorte);

  color[] colorEtagere = new color[] {color(#BA8C63),color(#BA8C63),color(#BA8C63),color(#BA8C63),color(#CEAF87)};
  etagere = new ObjetEtagere(new PVector(300, 0, 150), new PVector(90, 200, 35), 4, PI, 5, colorEtagere);

  color[] colorArmoire = new color[] {color(#CEAF87),color(#CE8D5D),color(#CE8D5D),color(#CE8D5D),color(#CE8D5D), color(#FAFAFA), color(#CED2D7), color(#CED2D7)};
  armoire1 = new ObjetArmoire(new PVector(0, 0, 200), new PVector(100, 200, 35), 4, HALF_PI, 5, true, colorArmoire);
  armoire2 = new ObjetArmoire(new PVector(0, 0, 100), new PVector(100, 200, 35), 4, HALF_PI, 5, colorArmoire);
}



void draw() {
  background(125);
  noStroke();
  noFill();
  
  PVector lightColor = new PVector(0,0,0);
  PVector screenColor = new PVector(5, 5,5);
  if (isLightOn) {
    lightColor = new PVector(250,250,250);
    screenColor = new PVector(0,0,0);
  }
  ambientLight(10, 10, 10);
  lightSpecular(lightColor.x/3, lightColor.y/3, lightColor.z/3);
  // lampe
  pointLight(lightColor.x, lightColor.y, lightColor.z, 160, -240, 185);  
  // Ecran 
  lightSpecular(screenColor.x, screenColor.y, screenColor.z);
  spotLight(screenColor.x, screenColor.y, screenColor.z, 20, -100, 315, 0, 0, 1, PI/6.0, 100);
  // Ecran ordi portable
  spotLight(screenColor.x, screenColor.y, screenColor.z, 8, -95, 250, 0, 0, 1, 0, 100);
  
  camera(camX, camY, camZ, cibleX, cibleY, cibleZ, 0, 1, 0);
  updateCamera();

  show();
  if (!isRoomDisplayed)
  drawGrid(1000, 50);
}



void mouseDragged() {
  regardCamera(pmouseX - mouseX, pmouseY - mouseY);
}



void keyPressed() {
  if (key == 'e') {
    isRoomDisplayed = !isRoomDisplayed;
  } else if (key == 'l') {
    isLightOn = !isLightOn;
    lampe.switchLight();
    laptop.switchLight();
  } else if (key == 'p') {
    porte.openDoor();
  }
}





/// Gestion des Objets
// Affichage des Objets

void show() {
  // Animation 
  porte.openingDoor();
  // Shader texture
  shader(shaderTexture);
  if (isRoomDisplayed)
    chambre.show();
  laptop.show();
    
  // Shader Color
  shader(shaderColor);
  lampe.show();
  table.show();
  chaise.show();
  ecran.show();
  lit.show();
  chauffage.show();
  porte.show();
  etagere.show();
  armoire1.show();
  armoire2.show();
}

// Affichage de la grille

void drawGrid(int gridSize, int squareSize) {
  pushMatrix();
  for (int i = - gridSize; i <= gridSize; i += squareSize) {
    if (i == 0)
      stroke(255, 0, 0);
    else
    stroke(255);
    line(i, 0, - gridSize, i, 0, gridSize);
    line(- gridSize, 0, i, gridSize, 0, i);
  }
  popMatrix();
}





// gestion de la camera

void updateCible() {
  this.cibleX = this.camX + rayon * cos(elevationAngle) * sin(rotationAngle);
  this.cibleY = this.camY + rayon * sin(elevationAngle);
  this.cibleZ = this.camZ + rayon * cos(elevationAngle) * cos(rotationAngle);
}

void updateCamera() {
  if (keyPressed) {
    if (key == 'z' || keyCode == UP) {
      this.camX += cos(elevationAngle) * sin(rotationAngle) * speedMouv;
      this.camY += sin(elevationAngle) * speedMouv;
      this.camZ += cos(elevationAngle) * cos(rotationAngle) * speedMouv;
    } else if (key == 'q' || keyCode == LEFT) {
      this.camX += sin(rotationAngle + HALF_PI) * speedMouv;
      this.camZ += cos(rotationAngle + HALF_PI) * speedMouv;
    } else if (key == 's' || keyCode == DOWN) {
      this.camX -= cos(elevationAngle) * sin(rotationAngle) * speedMouv;
      this.camY -= sin(elevationAngle) * speedMouv;
      this.camZ -= cos(elevationAngle) * cos(rotationAngle) * speedMouv;
    } else if (key == 'd' || keyCode == RIGHT) {
      this.camX += sin(rotationAngle - HALF_PI) * speedMouv;
      this.camZ += cos(rotationAngle - HALF_PI) * speedMouv;
    } else if (key == ' ') {
      this.camY -= speedMouv/2;
    } else if (keyCode == SHIFT) {
      this.camY += speedMouv/2;
    }
    updateCible();
  }
}


void regardCamera(float x, float y) {
  rotationAngle = (rotationAngle + (-x * speedAngle)) % TWO_PI;
  elevationAngle = constrain((elevationAngle + (y * speedAngle)), - radians(89), radians(89));
  updateCible();
}
