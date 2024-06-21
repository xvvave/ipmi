//Declaración de variables locales para la función Patron()
int numCols = 25; // Número de columnas de patrones
int numRows = 25; // Número de filas de patrones
int spacing = 40; // Espaciado entre los patrones

void Patron() {

  background(255);

  // Ciclo For Anidado
  for (int i = 0; i < numCols; i++) {
    for (int j = 0; j < numRows; j++) {
      // Coordenadas del patrón
      float patternX = 4 + i * spacing;
      float patternY = 0 + j * spacing;

      // Calcular la distancia entre el mouse y el patrón con funciones matematicas
      float dist = dist(mouseX, mouseY, 408 + patternX, 10 + patternY);
      float maxDist = 80; // Distancia máxima para el efecto de zoom
      float zoomScale = map(dist, 0, maxDist, maxZoomScale, 1.0); // Mapear la distancia a un factor de escala

      // Dibujar cuadrado 1
      fill(0);
      rect(418 + patternX, 0 + patternY, 19, 19); // Tamaño original

      // Dibujar cuadrado 2
      fill(0);
      rect(398 + patternX, 20 + patternY, 19, 19); // Tamaño original

      // Dibujar círculo 2
      fill(0);
      if (aplicarZoom) {
        circle(428 + patternX, 30 + patternY, 19 * zoomScale);
      } else {
        circle(428 + patternX, 30 + patternY, 19);
      }

      //Dibujar círculo 1
      if (dist <= zoomRadius && aplicarZoom) {
        circle(408 + patternX, 10 + patternY, 19 * maxZoomScale);
      } else {
        fill(0);
        circle(408 + patternX, 10 + patternY, 19);
      }
    }
  }
}
