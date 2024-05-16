//declaracion de variables
int estado;
int frameActual = 0;
int posX = 0; // Posición inicial del texto
PImage tolch1, tolch2, tolch3, tolch4, tolch5;
PImage playbutton;
PImage restartbutton;
PFont fuenteTitulo;

/////////////////////////////////////////////

void setup() {
  size(640, 480);

  estado = 0;

  playbutton = loadImage("playbutton.jpg");
  restartbutton = loadImage("restartbutton.jpg");
  tolch1 = loadImage("tolch1.jpg");
  tolch2 = loadImage("tolch2.jpg");
  tolch3 = loadImage("tolch3.jpg");
  tolch4 = loadImage("tolch4.jpg");
  tolch5 = loadImage("tolch5.jpg");
  fuenteTitulo = loadFont("coolvetica.vlw");
  textFont(fuenteTitulo);
}

/////////////////////////////////////////////

void draw() {

  background(255);
  fill(255);
  textSize(48);
  textAlign(CENTER, CENTER);

  // Movimiento del texto de Inicio hacia la izquierda
  posX -= 2.3;
  // Cuando el texto sale por el marco izquierdo...
  if (posX < -640) {
    // ...reaparece por la derecha
    posX = 640*2;
  }


  //Diapositiva 0 (Inicio)
  if (estado == 0) {

    image(playbutton, 0, 0);
    fill(0);
    textSize(18);
    text("Bienvenido, utilice el click izquierdo para avanzar, el click derecho para retroceder, mantenga presionado para detener o espere y las diapositivas avanzaran automaticamente.", posX, height/8.5);
    textSize(48);
    text("Iniciar", width/2, height/1.2);
    fill(255);
    //Diapositiva 5 (Repetir)
  } else if (estado == 6) {
    image(restartbutton, 0, 0);
    fill(0);
    text("Reiniciar", width/2, height/1.2);
    fill(255);
    //Diapositiva 1
  } else {
    if (estado == 1) {
      image(tolch1, 0, 0);
      fill(0, 150);
      rect (0, 300, 640, 400);
      fill(255);
      textSize(18);
      text("Esta presentacion explora la colaboracion innovadora", width/2, 335);
      text("entre arte y tecnologia en una instalacion de", width/2, 370);
      text("arte electronico en una pista de baile,", width/2, 405);
      text ("donde las visuales complementan la musica de los DJs.", width/2, 440);
      //Diapositiva 2
    } else if (estado == 2) {
      image(tolch2, 0, 0);
      fill(0, 150);
      rect (0, 300, 640, 400);
      fill(255);
      textSize(18);
      text("La instalacion de arte electronico de Tolch ofrece ", width/2, 335);
      text("una experiencia sensorial inmersiva, donde los ", width/2, 361);
      text ("espectadores se sumergen en un mundo de creatividad ", width/2, 387);
      text("y tecnologia mientras las imagenes se sincronizan ", width/2, 414);
      text("con la musica  y el ambiente de la pista de baile.", width/2, 440);
      //Diapositiva 3
    } else if (estado == 3) {
      image(tolch3, 0, 0);
      fill(0, 150);
      rect (0, 300, 640, 400);
      fill(255);
      textSize(18);
      text("Las pantallas LED recubren las estructuras en el techo,", width/2, 335);
      text("creando un lienzo dinamico donde se proyectan imagenes", width/2, 370);
      text ("cautivadoras que envuelven a los espectadores en una", width/2, 405);
      text("experiencia visual unica.", width/2, 440);
      //Diapositiva 4
    } else if (estado == 4) {
      image(tolch4, 0, 0);
      fill(0, 150);
      rect (0, 300, 640, 400);
      fill(255);
      textSize(18);
      text("Los visuales se crean y manipulan en TouchDesigner", width/2, 335);
      text("utilizando su programacion por nodos, luego se envian a ", width/2, 361);
      text ("Resolume para su proyeccion en las pantallas LED,", width/2, 387);
      text("proporcionando un control preciso y una personalizacion", width/2, 414);
      text("completa de la experiencia visual.", width/2, 440);
      //Diapositiva 5
    } else if (estado == 5) {
      image(tolch5, 0, 0);
      fill(0, 150);
      rect (0, 300, 640, 400);
      fill(255);
      textSize(18);
      text("Tolch emplea la potencia de software como TouchDesigner, con su", width/2, 335);
      text("programación por nodos, y Resolume para llevar a cabo su vision artistica.", width/2, 370);
      text("Esta fusion de arte y tecnologia crea una experiencia unica que cautiva", width/2, 405);
      text("a los espectadores, sumergiendolos en un viaje visual y sonoro inolvidable.", width/2, 440);
    }

    //Reproducción automatizada
    frameActual = frameActual + 1;

   //Detener automatización al mantener presionado click
   if (frameActual >= 180 && mouseButton != LEFT) {
      estado = estado + 1;
      frameActual = 0;

      if (estado > 5) {
        estado = 6;
      }
    }
  }
}

/////////////////////////////

void mouseClicked() {
  if (mouseButton == LEFT) {
    if (estado == 6) { // Si se hace clic en "Reiniciar"
      estado = 1; // Reinicia a la escena 1
  //Avanzar diapositiva con click izquierdo
} else {
      estado = estado + 1;
      if (estado > 5) {
        estado = 6;
      }
    }
//Retroceder diapositiva con click derecho
} else if (mouseButton == RIGHT) {
    estado = estado - 1;
    if (estado < 1) {
      estado = 0;
    }
  }
}
