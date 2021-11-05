/** Representa las frutas podridas en el juego */
class FrutaPodrida extends FrameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "valorPuntaje" de tipo int */
  private int valorPuntaje;
  /** Se declara el arreglo del objeto de la clase Regla */
  private ArrayList <Regla>regla;
  //---------Zona de Operaciones---------//
  /** Constructor por defecto*/
  public FrutaPodrida() {
    this.sprite = loadImage("resources/fruits/frutapodrida.png");
    this.posicion = new PVector();
  }
  /** Método que permite desplazar la fruta en el eje y (simula que la fruta está cayendo) */
  public void caer() {
    if (this.posicion.y <= height) {
      this.posicion.y ++;
    }
  }
}
