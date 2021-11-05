/** Representa la super clase GameObject del que heredarán las clases hijas */
abstract class GameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "posicion" de tipo PVector */
  protected PVector posicion;
  /** Se declara la variable "velocidad" de tipo float */
  protected float velocidad;
  //---------Zona de Operaciones---------//
  /** Método que permite dibujar los objetos en el lienzo */
  public abstract void display();

  //--------Zona de Métodos Accesores--------//
  public PVector getPosicion() { // Permite obtener la posición del objeto
    return this.posicion; // Retorna la posicion actual
  }

  public void setPosicion(PVector posicion) { // Permite colocar la posicion del objeto
    this.posicion = posicion; // Se le asigna a esta posición, el nuevo valor de la posición
  }

  public float getVelocidad() { // Permite obtener la velocidad del objeto
    return this.velocidad; // Retorna la velocidad actual
  }

  public void setVelocidad(float velocidad) { // Permite colocar la velocidad del objeto
    this.velocidad=velocidad; // Se le asigna a esta velocidad, el nuevo valor de la velocidad
  }
}
