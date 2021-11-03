/** Representa la super clase GameObject del que heredarán las clases hijas */
abstract class GameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "tamanio" de tipo float */
  protected float tamanio;
  /** Se declara la variable "colorObjeto" de tipo color */
  protected color colorObjeto;
  /** Se declara la variable "posicion" de tipo PVector */
  protected PVector posicion;
  //---------Zona de Operaciones---------//
  /** Método que permite dibujar los objetos en el lienzo */
  public abstract void display();
}
