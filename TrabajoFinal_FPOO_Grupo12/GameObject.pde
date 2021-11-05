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
  public PVector getPosicion(){ 
    return this.posicion; 
  }
  
  public void setPosicion(PVector posicion){ 
    this.posicion = posicion; 
  }
  
  public float getVelocidad(){ 
    return this.velocidad; 
  }
  
  public void setVelocidad(float velocidad){ 
    this.velocidad=velocidad; 
  }
}
