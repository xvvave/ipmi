PImage FotoLatta;

void setup() {
  size(800, 400);
  background(235);

  //Contorno de fondo (X,Y,widht,height)
  fill(0);
  rect(0, 0, 800, 35);
  rect(0, 35, 70, 400);
  rect(70, 365, 800, 35);
  rect(730, 35, 70, 400);

  // Separador foto/dibujo
  rect(399, 0, 2, 400);

  textSize(12);
  fill(255);
  text ("Haz Click!", 540, 25);

  FotoLatta  = loadImage ("data/FotoLatta.jpg");
}

///////////////////////////////////////


void draw() {

  //Coordenadas en consola
  println("X: " + mouseX);
  println("Y: " + mouseY);

  image (FotoLatta, 70, 35, 330, 330);

  // Contorno de rostro
  line(478, 91, 507, 261);
  line(656, 90, 623, 260);
  line(507, 261, 540, 299);
  line(540, 299, 582, 299);
  line(582, 299, 623, 259);
  line(478, 91, 531, 40);
  line(531, 40, 603, 40);
  line(603, 40, 656, 90);

  // Flequillo
  line(494, 184, 501, 147);
  line(501, 147, 520, 152);
  line(520, 152, 537, 137);
  line(537, 137, 584, 142);
  line(584, 142, 635, 197);

  // Oreja Izquierda
  line(491, 176, 477, 174);
  line(477, 174, 495, 232);
  line(495, 232, 502, 228);
  // Oreja Derecha
  line(639, 176, 654, 173);
  line(654, 173, 637, 236);
  line(637, 236, 628, 231);

  // Ropa
  line(508, 264, 400, 333);
  line(512, 265, 514, 302);
  line(514, 302, 570, 365);
  line(428, 349, 479, 365);

  line(619, 263, 730, 331);
  line(660, 365, 705, 350);
  line(619, 263, 614, 304);
  line(614, 304, 560, 355);

  // Ceja Izquierda
  line(511, 179, 551, 181);
  line(551, 181, 551, 196);
  line(551, 196, 541, 186);
  line(541, 186, 511, 185);
  line(511, 185, 511, 179);
  // Ceja Derecha
  line(576, 180, 615, 174);
  line(615, 174, 617, 186);
  line(617, 186, 588, 187);
  line(588, 187, 575, 194);

  // Ojos
  fill(0);
  circle(538, 190, 10);
  circle(590, 191, 10);
  // Expansores
  circle(498, 227, 9);
  circle(634, 230, 10);

  // Nariz
  line(544, 229, 554, 244);
  line(554, 244, 580, 236);
  line(580, 236, 571, 204);
  line(571, 204, 576, 180);

  // Boca
  line(550, 285, 579, 287);
  line(540, 260, 558, 270);
  line(558, 270, 586, 265);
  line(539, 258, 569, 264);
  line(569, 264, 575, 261);
  line(575, 261, 585, 266);
}

///////////////////////////////////////

void mousePressed() {
  background(235);

  //Mostrar dibujo al presionar el click
  fill(0);
  rect(0, 0, 800, 35);
  rect(0, 35, 70, 400);
  rect(70, 365, 800, 35);
  rect(730, 35, 70, 400);

  rect(399, 0, 2, 400);
}

//Cuadrado negro tapa dibujo al soltar el click
void mouseReleased() {
  fill(0);
  rect(400, 35, width, height);

  textSize(12);
  fill(255);
  text ("Manten presionado el click para ver el dibujo", 460, 25);
}
