/** Representa las frutas podridas en el juego */
class FrutaPodrida extends FrameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara el arreglo del objeto de la clase Regla */
  private ArrayList <Regla>regla;
  /** Se declara la variable "colisionFP" de tipo boolean */
  private boolean colisionFP = false;
  //---------Zona de Operaciones---------//
  /** Constructor por defecto*/
  public FrutaPodrida() {
    this.sprite = loadImage("resources/fruits/frutapodrida.png"); // Se le asigna la imágen "frutapodrida.png" a la variable "sprite" de tipo PImage
    this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
    setPosicion(new PVector(int(random(20, width-20)), 0)); // Se le asigna esta posición para el sprite que se creará
    setHeightFrame(50); // Se le asigna este alto al sprite que se creará
    setWidthFrame(50); // Se le asigna este ancho al sprite que se creará
  }
  /** Método que permite desplazar la fruta en el eje y (simula que la fruta está cayendo) */
  public void caer() {
    if (this.posicion.y <= height) { // Si la posición en y de la fruta podrida es menor o igual que el alto del lienzo, entonces
      this.posicion.y += this.velocidad; // A la posición en y se le irá aumentando el valor de la velocidad
    }
  }
  /** Método que permite detectar si hay colisión entre las frutas podridas y el jugador */
  public boolean colisionarFP(Jugador jugador) {
    if (this.posicion.x >= jugador.getPosicion().x - 15 &&
      this.posicion.x <= jugador.getPosicion().x + 15 &&
      this.posicion.y >= jugador.getPosicion().y - 15 &&
      this.posicion.y <= jugador.getPosicion().y + 15) {
      colisionFP = true;
      println("He colisionado a la mala");
    } else if (this.posicion.y >= height-10) {
      colisionFP = true;
    }
    return colisionFP;
  }
  //--------Zona de Métodos Accesores--------//
  public boolean getColisionarFP() { // Permite obtener la posición del jugador
    return colisionFP; // Retorna la posicion actual
  }
}
