//tp1
//Goyeneche Catalina 91364/8

PImage tanque;

void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  tanque = loadImage("tanque.jpg");
  image(tanque, 400, 0, 400, 450);
  println(mouseX, mouseY);

  fill(#54582f);
  rect(100, 150, 200, 100); // cuadrado grande de abajo

  // "ruedas"
  fill(#86895d);
  ellipse(125, 250, 50, 50);
  ellipse(175, 250, 50, 50);
  ellipse(225, 250, 50, 50);
  ellipse(275, 250, 50, 50);

  rect(250, 115, 130, 20); // "cañón"

  // cuadrado de arriba
  rect(140, 100, 120, 50);

  // rect abajo de todo
  fill(#54582f);
  rect(100, 200, 200, 30);
  stroke(0);

  // Circulos minis para abajo
  fill(#86895d);
  ellipse(110, 215, 20, 20);
  ellipse(140, 215, 20, 20);
  ellipse(170, 215, 20, 20);
  ellipse(200, 215, 20, 20);
  ellipse(230, 215, 20, 20);
  ellipse(260, 215, 20, 20);
  ellipse(290, 215, 20, 20);
}
