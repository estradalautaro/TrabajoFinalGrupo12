/** Representa la clase Regla */
class Regla {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "puntajeInicial" de tipo entero */
  private int puntajeInicial;
  /** Se declara la variable "vidaInicial" de tipo entero */
  private int vidaInicial;
  /** Se declara la variable "posicionVida" de tipo PVector */
  private PVector posicionVida;
  /** Se declara la variable "posicionPuntaje" de tipo PVector */
  private PVector posicionPuntaje;

  /** Se declara la variable "fondo" del tipo "PImage" */
  PImage fondo;
  int tiempo;
  int puntos;
  //---------Zona de declaración de Objetos---------//
  private Jugador jugador; //Se declara el objeto "jugador" de la clase "Jugador"
  private ListaDeFruta frutas;
  private ListaDeFrutaPodrida frutasPodridas;
  private Escenario escenario;
  //---------Zona de Operaciones---------//
  /** Constructor de las reglas */
  public Regla() {
    escenario = new Escenario(loadImage("resources/escenario/bg.jpg")); // Se le asigna la imágen "bg" a la variable "fondo" de tipo PImage
    jugador = new Jugador(); //Se instancia el objeto "jugador" de clase "Jugador" que posee un constructor por defecto
    frutas = new ListaDeFruta();
    frutasPodridas = new ListaDeFrutaPodrida();
  }
  /** Método que permite dibujar los objetos en el lienzo */
  public void display() {
    escenario.display();
    jugador.display(); //Ejecuta el método "display()" del objeto "jugador"
    jugador.mover(); //Ejecuta el método "mover()" del objeto "jugador"
    jugador.esconderCanasta(); //Ejecuta el método "esconderCanasta()" del objeto "jugador"

    // Cartel de puntos
    String s = puntos + " pts.";
    fill(0, 102, 153);
    text(s, 10, 10, 70, 80);


    if (millis() - tiempo > 500) {
      frutas.agregarFruta();
      frutasPodridas.agregarFrutaPodrida();
      tiempo = millis();
    }

    int indiceFrutaBorrar=-1;
    for (int i=0; i<frutas.tamanioLista(); i++) {
      frutas.getFruta(i).display();
      frutas.getFruta(i).caer();
      if (frutas.getFruta(i).colisionarF(jugador)) {
        indiceFrutaBorrar=i;
      }
    }
    if (indiceFrutaBorrar>-1) {
      frutas.removerFruta(indiceFrutaBorrar);
    }

    int indiceFrutaPodridaBorrar=-1;
    for (int i=0; i<frutasPodridas.tamanioListaFP(); i++) {
      frutasPodridas.getFrutaPodrida(i).display();
      frutasPodridas.getFrutaPodrida(i).caer();
      if (frutasPodridas.getFrutaPodrida(i).colisionarFP(jugador)) {
        indiceFrutaPodridaBorrar=i;
      }
    }
    if (indiceFrutaPodridaBorrar>-1) {
      frutasPodridas.removerFrutaPodrida(indiceFrutaPodridaBorrar);
    }
  }
  /** Método que permite aumentar el puntaje del jugador al colisionar con una fruta */
  public void subirPuntaje() {
  }
  /** Método que permite disminuír la vida del jugador al colisionar con una fruta podrida */
  public void bajarVida() {
  }
  /** Método que permite actualizar las reglas del juego (al pasar de nivel y al perder el juego) */
  public void actualizarRegla() {
  }
  /** Método que permite terminar la partida en caso que se cumplan las condiciones de la clase Regla */
  public void gameOver(Regla regla) {
  }
  //--------Zona de Métodos Accesores--------//
  public int getVidaInicial() { // Permite obtener la vida inicial del jugador
    return this.vidaInicial; // Retorna la vida inicial
  }
  public int getPuntajeInicial() { // Permite obtener el puntaje inicial del jugador
    return this.puntajeInicial; // Retorna el puntaje inicial
  }
}
