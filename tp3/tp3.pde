// https://youtu.be/tlYpDUG9Q-Q
//obra de Bridget riley
PImage obra;
int numLineas = 40;
float normalgrosor = 4;
float randomgrosor;

void setup() {
  size(800, 400);
  obra = loadImage("obra.jpg");
  background(210);
  image(obra, 0, 0, width / 2, height);
  randomgrosor = normalgrosor;
}

void draw() {
  image(obra, 0, 0, width / 2, height);

  float centerX = width / 2 + (width / 4);
  float centerY = height / 2;
  float halfSize = 180; // Tamaño

  dibujarRombo(centerX, centerY, halfSize);

  stroke(50);
  strokeWeight(randomgrosor);

  float espacio = calcularEspacio(numLineas, width / 2);

  // dibujar las lineas
  for (int i = 0; i < numLineas / 2; i++) {
    for (int j = 0; j < 2; j++) {
      float x = width / 2 + (i * 2 + j) * espacio;
      line(x, 0, x, height);
    }
  }
}
void dibujarRombo(float centerX, float centerY, float halfSize) {
  noStroke();
  beginShape();
  fill(#ffffff);
  vertex(centerX, centerY - halfSize);
  vertex(centerX + halfSize, centerY);
  vertex(centerX, centerY + halfSize);
  vertex(centerX - halfSize, centerY);
  endShape(CLOSE);
}

void mouseMoved() {
  if (mouseX > width / 2) { //este if lo use para calcular si el mouse esta en la mitad derecha de la pantalla
    randomgrosor = random(1, 6);
  } else {
    randomgrosor = normalgrosor;
  }
}

void keyPressed() {
  if (key == ' ') {
    resetVariables();
  } else if (key == 'r' || key == 'R') {
    resetVariables();
  }
}

void resetVariables() {
  randomgrosor = normalgrosor;
}


float calcularEspacio(int totalLineas, float ancho) {
  return ancho / totalLineas;
}
