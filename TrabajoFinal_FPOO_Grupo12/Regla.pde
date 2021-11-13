/** Representa la clase Regla */
class Regla {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "puntajeInicial" de tipo entero */
  private int puntajeInicial;
  /** Se declara la variable "vidaInicial" de tipo entero */
  private int vidaInicial;
  /** Se declara la variable "tiempo" del tipo entero */
  private int tiempo;
  /** Se declara la variable "estado" del tipo entero */
  private int estado;
  /** Se declara la variable "show" del tipo boolean */
  private boolean show;
  /** Se declara la variable "posicionVida" de tipo PVector */
  private PVector posicionVida;
  /** Se declara la variable "posicionPuntaje" de tipo PVector */
  private PVector posicionPuntaje;
  /** Se declara la variable "ImagenVida" del tipo "PImage" */
  private PImage ImagenVida;
  //---------Zona de declaración de Objetos---------//
  private Jugador jugador; //Se declara el objeto "jugador" de la clase "Jugador"
  private ListaDeFruta frutas; // Se declara el objeto "frutas" de la clase "ListaDeFruta"
  private ListaDeFrutaPodrida frutasPodridas; // Se declara el objeto "frutasPodridas" de la clase "ListaDeFrutaPodrida"
  private Escenario escenario; //Se declara el objeto "escenario" de la clase "Escenario"
  //---------Zona de Operaciones---------//
  /** Constructor por defecto */
  public Regla() {
    show = false; // Se instancia el objeto "show" que estara en estado "false"   
    vidaInicial = 3; // Se instancia el objeto "vidaInicial" que tendra el valor asignado
    puntajeInicial = 0; // Se instancia el objeto "puntajeInicial" que tendra el valor asignado
    posicionPuntaje = new PVector (20, 140); //Se instancia el objeto "posicionPuntaje" que tendra la posicion PVector asignado
    posicionVida = new PVector (width-80, height-20); //Se instancia el objeto "posicionVida" que tendra la posicion PVector asignado
    jugador = new Jugador(); //Se instancia el objeto "jugador" de clase "Jugador" que posee un constructor por defecto
    frutas = new ListaDeFruta();  //Se instancia el objeto "frutas" de clase "ListaDeFruta" que posee un constructor por defecto
    frutasPodridas = new ListaDeFrutaPodrida(); //Se instancia el objeto "frutasPodridas" de clase "ListaDeFrutaPodrida" que posee un constructor por defecto
    ImagenVida = loadImage("resources/maincharacter/Canasta.png"); //Se instancia el objeto "ImagenVida" de clase "ListaDeFruta" que posee un constructor por defecto
  }
  /** Método que permite dibujar los objetos en el lienzo */
  public void display() {
    if (regla.getShow() == true) { // Si, se cumple la condicion ocurre lo siguiente
      regla.escenario.display(); //Ejecuta el método "display()" del objeto "escenario"
      regla.jugador.display(); //Ejecuta el método "display()" del objeto "jugador"
      regla.jugador.mover(); //Ejecuta el método "mover()" del objeto "jugador"
      regla.jugador.esconderCanasta(); //Ejecuta el método "esconderCanasta()" del objeto "jugador"
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
    textAlign(CORNERS);   // Establece la alineación actual para dibujar el texto en el rincon
    String nivel = "Nivel 1"; 
    textSize(50);
    text(nivel, 20, 60);
    String objetivo = "Objetivo 100 pts.";
    textSize(30);
    text(objetivo, 20, 100);
    textSize(30); // Tamaño del texto que utilizará "Puntos"
    text("Puntos: " + puntajeInicial, posicionPuntaje.x, posicionPuntaje.y); // Texto que se mostrará, se actualizará al impactar aliens
    imageMode(CORNERS);
    textSize(30);
    text("Frame rate: " + int(frameRate = 60), 10, height - 3*8);
    textSize(40);
    text("¡¡¡Atrapa esas Frutas!!!", width/2 - 180, height - 3*7);
    imageMode(CENTER); // Centra la ubicación desde la que se dibujarán las imágenes
    image(ImagenVida, posicionVida.x-40, posicionVida.y-10, 60, 40);
    text("X" + vidaInicial, posicionVida.x, posicionVida.y);
    escenario = new Escenario(loadImage("resources/escenario/nivel1.png"));
    if (millis() - tiempo > 1000) {
      frutas.agregarFruta();
      frutasPodridas.agregarFrutaPodrida();
      tiempo = millis();
    }
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
    imageMode(CORNERS);
    textSize(30);
    text("Frame rate: " + int(frameRate = 60), 10, height - 3*8);
    textSize(40);
    text("¡¡¡Atrapa esas Frutas!!!", width/2 - 180, height - 3*7);
    imageMode(CENTER); // Centra la ubicación desde la que se dibujarán las imágenes
    image(ImagenVida, posicionVida.x-40, posicionVida.y-10, 60, 40);
    text("X" + vidaInicial, posicionVida.x, posicionVida.y);
    escenario = new Escenario(loadImage("resources/escenario/nivel2.png"));
    if (millis() - tiempo > 750) {
      frutas.agregarFruta();
      frutasPodridas.agregarFrutaPodrida();
      frutasPodridas.agregarFrutaPodrida();
      tiempo = millis();
    }
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
    imageMode(CORNERS);
    textSize(30);
    text("Frame rate: " + int(frameRate = 60), 10, height - 3*8);
    textSize(40);
    text("¡¡¡Atrapa esas Frutas!!!", width/2 - 180, height - 3*7);
    imageMode(CENTER); // Centra la ubicación desde la que se dibujarán las imágenes
    image(ImagenVida, posicionVida.x-40, posicionVida.y-10, 60, 40);
    text("X" + vidaInicial, posicionVida.x, posicionVida.y);
    escenario = new Escenario(loadImage("resources/escenario/nivel3.png"));
    if (millis() - tiempo > 500) {
      frutas.agregarFruta();
      frutas.agregarFruta();
      frutasPodridas.agregarFrutaPodrida();
      frutasPodridas.agregarFrutaPodrida();
      frutasPodridas.agregarFrutaPodrida();
      tiempo = millis();
    }
  }
  public void winner() {
    estado = MaquinaEstados.GANANDO_PARTIDA;
    if (puntajeInicial >= 300) {
      escenario = new Escenario(loadImage("resources/escenario/win.png"));
      escenario.setPosicion(new PVector(0, 0));
      escenario.setTamanio(new PVector(width, height));
      escenario.display();
    }
  }
  public void gameOver() {
    estado = MaquinaEstados.PERDIENDO_PARTIDA;
    if (vidaInicial <= 0) {
      imageMode(CORNERS);
      escenario = new Escenario(loadImage("resources/escenario/GameOver.png"));
      escenario.setPosicion(new PVector(0, 0));
      escenario.setTamanio(new PVector(width, height));
      escenario.display();
    }
  }
  /** Método que permite actualizar las reglas del juego (al pasar de nivel y al perder el juego) */
  public void actualizarRegla() {
    vidaInicial = 3;
    puntajeInicial = 0;
    posicionPuntaje = new PVector (20, 140);
    posicionVida = new PVector (width-80, height-20);
    jugador = new Jugador(); //Se instancia el objeto "jugador" de clase "Jugador" que posee un constructor por defecto
    frutas = new ListaDeFruta();
    frutasPodridas = new ListaDeFrutaPodrida();
    ImagenVida = loadImage("resources/maincharacter/Canasta.png");
  }
  public void condicionEstado() {
    if (regla.puntajeInicial >= 100 && regla.estado == MaquinaEstados.NIVEL_1) {
      regla.estado = MaquinaEstados.NIVEL_2;
      actualizarRegla();
    }
    if (regla.puntajeInicial >= 200 && regla.estado == MaquinaEstados.NIVEL_2) {
      regla.estado = MaquinaEstados.NIVEL_3;
      actualizarRegla();
    }
    if (regla.puntajeInicial >= 300 && regla.estado == MaquinaEstados.NIVEL_3) {
      regla.estado = MaquinaEstados.GANANDO_PARTIDA;
      actualizarRegla();
    }
    if (regla.vidaInicial <= 0 && (regla.estado == MaquinaEstados.NIVEL_1 || regla.estado == MaquinaEstados.NIVEL_2 || regla.estado == MaquinaEstados.NIVEL_3)) {
      regla.estado = MaquinaEstados.PERDIENDO_PARTIDA;
    }
  }
  public boolean getShow() {
    return this.show;
  }
}
