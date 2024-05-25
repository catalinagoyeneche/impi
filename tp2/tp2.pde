int pantalla = 1;
int[] mitext = {60, 60, 60, 60};
int botonPosX = 530;
int botonPosY = 430;
int botonWidth = 100;
int botonHeight = 40;
int startTextPos = 60; 
PImage primera, segunda, tercera, cuarta;
PFont fuentenueva;

void setup() {
  size(640, 480);
  textSize(30); 

  primera = loadImage("1.png");
  segunda = loadImage("2.png");
  tercera = loadImage("3.png");
  cuarta = loadImage("4.png");
   fuentenueva= loadFont ("book28.vlw");
}

void draw() {
  background(255);
  textSize(30); 

  if (pantalla == 1) {
    textFont(fuentenueva);
    tint(255, 127); 
    image(primera, 0, 0);
    fill(0);
    text("Charlotte es un anime que sigue la \nhistoria de adolescentes \ncon habilidades sobrenaturales.", 50, mitext[0]);
    mitext[0] += 1; // Mover texto abajo
  } 
  
  else if (pantalla == 2) {
    textFont(fuentenueva);
    tint(255, 127);
    image(segunda, 0, 0);
    fill(0);
    text("La serie explora cómo Yuu y otros \nestudiantes lidian con sus poderes \ny son reclutados por una \norganización para protegerlos", 20, mitext[0]);
    mitext[0] += 1;
  } 
  
  else if (pantalla == 3) {
    textFont(fuentenueva);
    tint(255, 127);
    image(tercera, 0, 0);
    fill(0);
    text("A medida que la trama avanza, \nse descubren secretos oscuros \ndetrás de los poderes de los personajes, \nlo que añade una capa de misterio \na la historia.", 50, mitext[2]);
    mitext[2] += 1; // Mover texto hacia abajo
  } 
  
  else if (pantalla == 4) {
    textFont(fuentenueva);
    tint(255, 127);
    image(cuarta, 0, 0);
    fill(0);
    text("Charlotte combina elementos de drama, \ncomedia y acción para crear \nuna experiencia cautivadora \nque ha ganado popularidad \nentre los aficionados", 20, mitext[3]);
    if (mitext[3] > 50) {
      mitext[3] -= 1; 
    }

    fill(0);
    rect(botonPosX, botonPosY, botonWidth, botonHeight);
    fill(255);
    textSize(16);
    text("inicio", botonPosX + botonWidth / 2 - 20, botonPosY + botonHeight / 2 + 6);
  }

  if (frameCount % (60 * 5) == 0) {
    pantalla++;
    if (pantalla > 4) {
      pantalla = 1;
    }
    mitext[0] = startTextPos;
    mitext[1] = 60;
    mitext[2] = 60;
    mitext[3] = 60;
  }
}

void mouseClicked() {
  if (pantalla == 4 && mouseX > botonPosX && mouseX < botonPosX + botonWidth && mouseY > botonPosY && mouseY < botonPosY + botonHeight) {
    pantalla = 1;
    mitext[0] = startTextPos;
    mitext[1] = 60;
    mitext[2] = 60;
    mitext[3] = 60;
  }
}
