// Declaración de variables
PImage Referencia;
int zoomRadius = 15; // Radio para el efecto de zoom
boolean invertido = false; // Variable para controlar el estado de inversión
boolean aplicarZoom = true; // Variable para controlar el efecto de zoom
float maxZoomScale = 1.5; // Factor de escala máximo

/////////////////////////////////////////////////

void setup() {
  size(800, 400);
  Referencia = loadImage("Referencia.jpg");
  noCursor();
}

/////////////////////////////////////////////////

void draw() {
  Patron();

  // Dibujar la imagen de referencia
  image(Referencia, 0, 0);

  // Mostrar coordenadas del mouse en la consola usando función propia
  println(obtenerCoordenadas(mouseX, mouseY));

  // Verificar si está invertido y aplicar la inversión si es necesario
  if (invertido) {
    invertirColores();
  }
}

/////////////////////////////////////////////////

void invertirColores() {
  loadPixels();
  for (int i = 0; i < pixels.length; i++) {
    pixels[i] = color(255 - red(pixels[i]), 255 - green(pixels[i]), 255 - blue(pixels[i]));
  }
  updatePixels();
}

/////////////////////////////////////////////////

void mousePressed() {
  invertido = !invertido; // Cambiar el estado de inversión al hacer clic
}

/////////////////////////////////////////////////

void keyPressed() {
  if (key == 'r' || key == 'R') {
    aplicarZoom = false; // Desactivar el zoom al presionar 'r'
  } else if (key == ENTER) {
    aplicarZoom = true; // Activar el zoom al presionar Enter
  }
}

/////////////////////////////////////////////////

// Función propia con parámetros enteros que retornan valor de X e Y para mostrar las coordenadas del mouse en forma concatenada
String obtenerCoordenadas(int x, int y) {
  return "X: " + x + ", Y: " + y; 
}
