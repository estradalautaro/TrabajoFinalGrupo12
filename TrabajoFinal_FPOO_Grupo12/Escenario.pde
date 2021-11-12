class Escenario {
  private PImage fondo;
  private PVector posicion;
  private PVector tamanio;
  private int estado;

  public Escenario(PImage fondo) {
    this.fondo = fondo;
    this.posicion = new PVector (11, 11);
    this.tamanio = new PVector (width - 3*4, height - 3*22);
  }
  public void display() {
    imageMode(CORNERS);
    image(this.fondo, this.posicion.x, this.posicion.y, this.tamanio.x, this.tamanio.y);
  }
  //--------Zona de Métodos Accesores--------//
  public PVector getPosicion() { // Permite obtener la posición del objeto
    return this.posicion; // Retorna la posicion actual
  }
  public void setPosicion(PVector posicion) { // Permite colocar la posicion del objeto
    this.posicion = posicion; // Se le asigna a esta posición, el nuevo valor de la posición
  }
  public PVector getTamanio() {
    return this.tamanio;
  }
  public void setTamanio(PVector tamanio) {
    this.tamanio = tamanio;
  }
}
