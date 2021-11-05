/** Representa al jugador en el juego */
class Jugador extends FrameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara el arreglo del objeto de la clase Regla */
  private ArrayList <Regla>regla;
  //---------Zona de Operaciones---------//
  /** Método que permite mover al jugador en el eje X (de izquierda a derecha, siguiendo el cursor del mouse) */
  public void mover() {
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
