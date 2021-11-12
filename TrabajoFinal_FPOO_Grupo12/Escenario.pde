class Escenario {
  private PImage fondo;
  private PVector posicion;
  private PVector tamanio;

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
  public PVector getPosicion() {
    return this.posicion;
  }
  public PVector getTamanio() {
    return this.tamanio;
  }
}
