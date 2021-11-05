/** Representa al jugador en el juego */
class Jugador extends FrameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara el arreglo del objeto de la clase Regla */
  private ArrayList <Regla>regla;
  //---------Zona de Operaciones---------//
  /** Constructor por defecto*/
  public Jugador() {
    this.sprite = loadImage("resources/maincharacter/maincharacter.png"); // Se le asigna la imágen "maincharacter.png" a la variable "sprite" de tipo PImage
    setPosicion(new PVector(width/2, height/2)); // Se le asigna esta posición para el sprite que se creará
    setHeightFrame(100); // Se le asigna este alto al sprite que se creará
    setWidthFrame(100); // Se le asigna este ancho al sprite que se creará
  }
  /** Método que permite mover al jugador en el eje X (de izquierda a derecha, siguiendo el cursor del mouse) */
  public void mover() {
    this.posicion.x = mouseX; // Se iguala la posición X del jugador a la posición X del mouse
    this.posicion.y = height-(height/4); // Se le asigna la posición Y del jugador a 1/4 del alto del lienzo
  }
  /** Método que deshabilita la colisión entre el jugador y las frutas (mediante el click izquierdo del mouse) */
  public void esconderCanasta() {
  }
  /** Método que permite detectar si hay colisión entre el jugador y las frutas */
  public void colisionarFruta(Fruta arregloFruta, FrutaPodrida arregloFrutaPodrida) {
  }
  // --------Zona de Métodos Accesores-------- //
  public PVector getPosicion() { // Permite obtener la posición del jugador
    return this.posicion; // Retorna la posicion actual
  }
  public void setPosicion(PVector posicion) { // Permite colocar la posicion del jugador
    this.posicion = posicion; // Se prepara la variable "posicion" para su posterior utilización
  }
}
