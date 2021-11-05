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
    this.sprite = loadImage("resources/fruits/frutapodrida.png"); // Se le asigna la imágen "frutapodrida.png" a la variable "sprite" de tipo PImage
    setPosicion(new PVector(int(random(20, width-20)), 0)); // Se le asigna esta posición para el sprite que se creará
    setHeightFrame(50); // Se le asigna este alto al sprite que se creará
    setWidthFrame(50); // Se le asigna este ancho al sprite que se creará
  }
  /** Método que permite desplazar la fruta en el eje y (simula que la fruta está cayendo) */
  public void caer() {
    if (this.posicion.y <= height) { // Si la posición en y de la fruta podrida es menor o igual que el alto del lienzo, entonces
      this.posicion.y ++; // La posición en y irá incrementando en 1
    }
  }
}
