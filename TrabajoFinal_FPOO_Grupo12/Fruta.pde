/** Representa las frutas en el juego */
class Fruta extends FrameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "valorPuntaje" de tipo int */
  private int valorPuntaje;
  /** Se declara la variable "velocidad" de tipo float */
  private float velocidad;
  /** Se declara el arreglo del objeto de la clase Regla */
  private ArrayList <Regla>regla;
  //---------Zona de Operaciones---------//
  /** Constructor por defecto*/
  public Fruta() {
    this.sprite = loadImage("resources/fruits/manzana.png");
    this.posicion = new PVector();
  }
  /** Método que permite desplazar la fruta en el eje y (simula que la fruta está cayendo) */
  public void caer() {
    if (this.posicion.y <= height) {
      this.posicion.y ++;
    }
  }
  // --------Zona de Métodos Accesores-------- //
  public PVector getPosicion() { // Permite obtener la posición del objeto fruta
    return this.posicion; // Retorna la posicion actual
  }
  public void setPosicion(PVector posicion) { // Permite colocar la posicion del objeto fruta
    this.posicion = posicion; // Se prepara la variable "posicion" para su posterior utilización
  }
}
