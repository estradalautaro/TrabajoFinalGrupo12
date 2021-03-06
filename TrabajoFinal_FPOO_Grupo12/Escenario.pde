/** Representa la clase Escenario */
class Escenario {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "fondo" de tipo PImage */
  private PImage fondo;
  /** Se declara la variable "posicion" de tipo PVector */
  private PVector posicion;
  /** Se declara la variable "tamanio" de tipo PVector */
  private PVector tamanio;
  //---------Zona de Operaciones---------//
  /** Constructor por defecto */
  public Escenario(PImage fondo) {
    this.fondo = fondo; // Se prepara la variable "fondo" para su posterior utilización
    this.posicion = new PVector (11, 11); // Se asigna a la variable "posicion" el valor de 11 en x y 11 en y
    this.tamanio = new PVector (width - 3*4, height - 3*22); // Se asigna a la variable "tamanio" el valor de "width - 3*4" en X y "height - 3*22" en Y
  }
  /** Método que permite dibujar el escenario sobre el lienzo */
  public void display() {
    imageMode(CORNERS); // Modifica la ubicación desde la que se dibujarán los escenarios
    image(this.fondo, this.posicion.x, this.posicion.y, this.tamanio.x, this.tamanio.y); // Dibuja una imagen
  }
  //--------Zona de Métodos Accesores--------//
  public PVector getPosicion() { // Permite obtener la posición del escenario
    return this.posicion; // Retorna la posicion actual
  }
  public void setPosicion(PVector posicion) { // Permite colocar la posicion del escenario
    this.posicion = posicion; // Se le asigna a esta posición, el nuevo valor de la posición
  }
  public PVector getTamanio() { // Permite obtener la posición del escenario
    return this.tamanio; // Retorna el tamaño actual
  }
  public void setTamanio(PVector tamanio) { // Permite colocar el tamaño del escenario
    this.tamanio = tamanio; // Se le asigna a este tamaño, el nuevo valor del tamaño
  }
}
