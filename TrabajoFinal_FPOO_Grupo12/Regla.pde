/** Representa la clase Regla */
class Regla {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "puntajeInicial" de tipo entero */
  private int puntajeInicial;
  /** Se declara la variable "vidaInicial" de tipo entero */
  private int vidaInicial;
  /** Se declara la variable "tiempo" del tipo entero */
  private int tiempo;
  /** Se declara la variable "posicionVida" de tipo PVector */
  private PVector posicionVida;
  /** Se declara la variable "posicionPuntaje" de tipo PVector */
  private PVector posicionPuntaje;
  /** Se declara la variable "ImagenVida" del tipo "PImage" */
  private PImage ImagenVida;
  private boolean show;
  private int estado;

  private PImage estadoInicial;
  private PImage Nivel1;
  private PImage Nivel2;
  private PImage Nivel3;
  private PImage estadoWin;
  private PImage estadoGameOver;

  //---------Zona de declaración de Objetos---------//
  private Jugador jugador; //Se declara el objeto "jugador" de la clase "Jugador"
  private ListaDeFruta frutas;
  private ListaDeFrutaPodrida frutasPodridas;
  private Escenario escenario;
  //---------Zona de Operaciones---------//
  /** Constructor por defecto */
  public Regla() {
    show = false;
    vidaInicial = 3;
    puntajeInicial = 0;
    posicionPuntaje = new PVector (20, 140);
    posicionVida = new PVector (width-80, height-20);
    jugador = new Jugador(); //Se instancia el objeto "jugador" de clase "Jugador" que posee un constructor por defecto
    frutas = new ListaDeFruta();
    frutasPodridas = new ListaDeFrutaPodrida();
    ImagenVida = loadImage("resources/maincharacter/Canasta.png");

    estadoInicial = loadImage("resources/escenario/portada.png");
    Nivel1 = loadImage("resources/escenario/nivel1.png");
    Nivel2 = loadImage("resources/escenario/nivel2.png");
    Nivel3 = loadImage("resources/escenario/nivel3.png");
    estadoWin = loadImage("resources/escenario/win.png");
    estadoGameOver = loadImage("resources/escenario/GameOver.png");
  }
  /** Método que permite dibujar los objetos en el lienzo */
  public void display() {
    if (regla.getShow() == true) {
      regla.escenario.display();
      regla.jugador.display(); //Ejecuta el método "display()" del objeto "jugador"
      regla.jugador.mover(); //Ejecuta el método "mover()" del objeto "jugador"
      regla.jugador.esconderCanasta(); //Ejecuta el método "esconderCanasta()" del objeto "jugador"
      regla.displayFrutas();
    }
  }
  public void displayFrutas() {
    if (millis() - tiempo > 1000) {
      frutas.agregarFruta();
      frutasPodridas.agregarFrutaPodrida();
      tiempo = millis();
    }
    /** Recorre el arraylist de Frutas y las remueve al colisionar con el Jugador*/
    for (int i=0; i<frutas.tamanioLista(); i++) {
      boolean colisionarJugador = false;
      colisionarJugador = frutas.getFruta(i).colisionarF(jugador);
      if (colisionarJugador==false) {
        frutas.getFruta(i).display();
        frutas.getFruta(i).caer();
      } else {
        frutas.getFruta(i).getValorPuntaje();
        //println(frutas.getFruta(i).getValorPuntaje());
        regla.subirPuntaje();
        frutas.removerFruta(i);
      }
    }
    /** Recorre el arraylist de Frutas y las remueve al colisionar con el Escenario*/
    for (int i=0; i<frutas.tamanioLista(); i++) {
      boolean colisionarEscenario = false;
      colisionarEscenario = frutas.getFruta(i).colisionarEscenarioF(escenario);
      if (colisionarEscenario==true) {
        frutas.removerFruta(i);
      }
    }
    /** Recorre el arraylist de Frutas Podridas y las remueve al colisionar con el Jugador*/
    for (int i=0; i<frutasPodridas.tamanioListaFP(); i++) {
      boolean colisionarJugadorFP = false;
      colisionarJugadorFP = frutasPodridas.getFrutaPodrida(i).colisionarFP(jugador);
      if (colisionarJugadorFP==false) {
        frutasPodridas.getFrutaPodrida(i).display();
        frutasPodridas.getFrutaPodrida(i).caer();
      } else {
        regla.bajarVida();
        //println("Vidas/Canastas restantes: " + vidaInicial);
        frutasPodridas.removerFrutaPodrida(i);
      }
    }
    /** Recorre el arraylist de Frutas Podridas y las remueve al colisionar con el Escenario*/
    for (int i=0; i<frutasPodridas.tamanioListaFP(); i++) {
      boolean colisionarEscenarioFP = false;
      colisionarEscenarioFP = frutasPodridas.getFrutaPodrida(i).colisionarEscenarioFP(escenario);
      if (colisionarEscenarioFP==true) {
        frutasPodridas.removerFrutaPodrida(i);
      }
    }
  }
  /** Método que permite aumentar el puntaje del jugador al colisionar con una fruta */
  public void subirPuntaje() {
    for (int i=0; i<frutas.tamanioLista(); i++) {
      if (frutas.getFruta(i).colisionarF(jugador)) {
        puntajeInicial = puntajeInicial + frutas.getFruta(i).getValorPuntaje();
      }
    }
  }
  /** Método que permite disminuír la vida del jugador al colisionar con una fruta podrida */
  public void bajarVida() {
    for (int i=0; i<frutasPodridas.tamanioListaFP(); i++) {
      if (frutasPodridas.getFrutaPodrida(i).colisionarFP(jugador)) {
        vidaInicial --;
        if (vidaInicial == 0) {
          gameOver();
        }
      }
    }
  }
  /** Método que permite dibujar los objetos en el lienzo */
  public void nivel1() {
    estado = MaquinaEstados.NIVEL_1;
    textAlign(CORNERS);
    String nivel = "Nivel 1";
    textSize(50);
    text(nivel, 20, 60);
    String objetivo = "Objetivo 100 pts.";
    textSize(30);
    text(objetivo, 20, 100);
    textSize(30); // Tamaño del texto que utilizará "Puntos"
    text("Puntos: " + puntajeInicial, posicionPuntaje.x, posicionPuntaje.y); // Texto que se mostrará, se actualizará al impactar aliens
    imageMode(CENTER); // Centra la ubicación desde la que se dibujarán las imágenes
    image(ImagenVida, posicionVida.x-40, posicionVida.y-10, 60, 40);
    text("X" + vidaInicial, posicionVida.x, posicionVida.y);
    escenario = new Escenario(Nivel1);
  }
  /** Método que permite dibujar los objetos en el lienzo */
  public void nivel2() {
    estado = MaquinaEstados.NIVEL_2;
    textAlign(CORNERS);
    String nivel = "Nivel 2";
    textSize(50);
    text(nivel, 20, 60);
    String objetivo = "Objetivo 200 pts.";
    textSize(30);
    text(objetivo, 20, 100);
    textSize(30);
    text("Puntos: " + puntajeInicial, posicionPuntaje.x, posicionPuntaje.y);
    imageMode(CENTER); // Centra la ubicación desde la que se dibujarán las imágenes
    image(ImagenVida, posicionVida.x-40, posicionVida.y-10, 60, 40);
    text("X" + vidaInicial, posicionVida.x, posicionVida.y);
    escenario = new Escenario(Nivel2);
  }
  /** Método que permite dibujar los objetos en el lienzo */
  public void nivel3() {
    estado = MaquinaEstados.NIVEL_3;
    textAlign(CORNERS);
    String nivel = "Nivel 3";
    textSize(50);
    text(nivel, 20, 60);
    String objetivo = "Objetivo 300 pts.";
    textSize(30);
    text(objetivo, 20, 100);
    textSize(30);
    text("Puntos: " + puntajeInicial, posicionPuntaje.x, posicionPuntaje.y);
    imageMode(CENTER); // Centra la ubicación desde la que se dibujarán las imágenes
    image(ImagenVida, posicionVida.x-40, posicionVida.y-10, 60, 40);
    text("X" + vidaInicial, posicionVida.x, posicionVida.y);
    escenario = new Escenario(Nivel3);
  }
  public void winner() {
    estado = MaquinaEstados.GANANDO_PARTIDA;
    if (puntajeInicial >= 300) {
      escenario = new Escenario(estadoWin);
      escenario.setPosicion(new PVector(0, 0));
      escenario.setTamanio(new PVector(width, height));
      escenario.display();
    }
  }
  public void gameOver() {
    estado = MaquinaEstados.PERDIENDO_PARTIDA;
    if (vidaInicial <= 0) {
      imageMode(CORNERS);
      escenario = new Escenario(estadoGameOver);
      escenario.setPosicion(new PVector(0, 0));
      escenario.setTamanio(new PVector(width, height));
      escenario.display();
    }
  }
  /** Método que permite actualizar las reglas del juego (al pasar de nivel y al perder el juego) */
  public void actualizarRegla() {
    regla = new Regla();
  }
  
  //public int comenzarNivel() {
  //  if (keyPressed) {
  //    if (key == ' ') {
  //      regla = new Regla();
  //      keyPressed = false;
  //      estado = 1;
  //    }
  //    if (key == 'r' || key == 'R') {
  //      regla = new Regla();
  //      estado = 0;
  //    }
  //  }
  //  return estado;
  //}

  public boolean getShow() {
    return this.show;
  }
}
