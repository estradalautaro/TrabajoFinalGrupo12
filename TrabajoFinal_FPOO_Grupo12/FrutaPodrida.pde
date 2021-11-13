/** Representa las frutas podridas en el juego */
class FrutaPodrida extends FrameObject {
  //---------Zona de Operaciones---------//
  /** Constructor por defecto */
  public FrutaPodrida() {
    this.sprite = loadImage("resources/fruits/frutapodrida.png"); // Se le asigna la imágen "frutapodrida.png" a la variable "sprite" de tipo PImage
    this.velocidad = random(10, 20); // Se le asigna una velocidad random al sprite que se creará
    setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
    setHeightFrame(50); // Se le asigna este alto al sprite que se creará
    setWidthFrame(50); // Se le asigna este ancho al sprite que se creará
  }
  /** Método que permite desplazar la fruta en el eje y (simula que la fruta está cayendo) */
  public void caer() {
    if (this.posicion.y <= height) { // Si la posición en y de la fruta podrida es menor o igual que el alto del lienzo, entonces
      this.posicion.y += this.velocidad; // A la posición en y se le irá aumentando el valor de la velocidad
      posicion.y = constrain(posicion.y, regla.escenario.getPosicion().y + 10, regla.escenario.getTamanio().y - this.heightFrame/2); // Establece un límite entre dos posiciones (x o y), en este caso y, representando los límites en los que se caerá la fruta podrida
    }
  }
  /** Método que permite detectar si hay colisión entre las frutas podridas y el jugador */
  public boolean colisionarFP(Jugador jugador) {
    /** Se declara la variable "colisionFP" de tipo boolean */
    boolean colisionFP = false;
    if (this.posicion.x >= jugador.getPosicion().x - 15 && // Detecta colisión por la izquierda
      this.posicion.x <= jugador.getPosicion().x + 15 && // Detecta colisión por la derecha
      this.posicion.y >= jugador.getPosicion().y - 15 && // Detecta colisión por arriba
      this.posicion.y <= jugador.getPosicion().y + 15) { // Detecta colisión por debajo
      colisionFP = true; // Se le asigna a la variable "colisionFP" el valor de true
    }
    if (mousePressed) { // Si algún botón del mouse está siendo presionado, entonces
      colisionFP = false; // Se le asigna a la variable "colisionFP" el valor de false
    }
    return colisionFP; // Retorna la variable "colisionFP" de tipo boolean
  }
  /** Método que permite detectar si hay colisión entre las frutas podridas y el escenario */
  public boolean colisionarEscenarioFP(Escenario escenario) {
    /** Se declara la variable "colisionEscenarioFP" de tipo boolean */
    boolean colisionEscenarioFP = false;
    if (this.posicion.y >= escenario.getTamanio().y - this.heightFrame/2) { // Si la posición en y de la fruta podrida es mayor o igual a la parte inferior del escenario menos su altura dividido 2, entonces
      colisionEscenarioFP = true; // Se le asigna a la variable "colisionEscenarioFP" el valor de true
    }
    return colisionEscenarioFP; // Retorna la variable "colisionEscenarioFP" de tipo boolean
  }
}
