/** Representa los sprites en el juego */
class FrameObject extends GameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "sprite" de tipo PImage */
  protected PImage sprite;
  /** Se declara la variable "posXframe" de tipo entero */
  protected int posXframe;
  /** Se declara la variable "posYframe" de tipo entero */
  protected int posYframe;
  /** Se declara la variable "heightFrame" de tipo entero */
  protected int heightFrame;
  /** Se declara la variable "widthFrame" de tipo entero */
  protected int widthFrame;
  //---------Zona de Operaciones---------//
  /** Método que permite dibujar los sprites en el lienzo */
  public void display() {
    imageMode(CENTER); // Centra la ubicación desde la que se dibujarán las imágenes
    image(this.sprite, this.posicion.x,this.posicion.y,this.widthFrame,this.heightFrame); // Dibuja una imagen en el lienzo empleando los parámetros para su posición, anchura y altura
  }
  //--------Zona de Métodos Accesores--------//
  public PImage getSprite() { // Permite obtener la imagen del sprite
    return this.sprite; // Retorna esa imagen
  }
  public void setSprite(PImage sprite) { // Permite establecer la imagen del sprite
    this.sprite = sprite; // Se le asigna a este sprite, el nuevo sprite
  }
  public int getPosXframe() { // Permite obtener la posición en X del frame
    return this.posXframe; // Retorna esa posición en X
  }
  public void setPosXFrame(int posXframe) { // Permite establecer la posición en X del frame
    this.posXframe=posXframe; // Se le asigna a esta posición en X del frame, la nueva posición en X
  }
  public int getPosYframe() { // Permite obtener la posición en Y del frame
    return this.posYframe; // Retorna esa posición en Y
  }
  public void setPosYFrame(int posYframe) { // Permite establecer la posición en Y del frame
    this.posYframe=posYframe; // Se le asigna a esta posición en Y del frame, la nueva posición en Y
  }
  public int getHeightFrame() { // Permite obtener el alto del frame
    return this.heightFrame; // Retorna esa altura
  }
  public void setHeightFrame(int heightFrame) { // Permite establecer el alto del frame
    this.heightFrame = heightFrame; // Se le asigna al alto del frame, el nuevo valor establecidp
  }
  public int getWidthFrame() { // Permite obtener el ancho del frame
    return this.widthFrame; // Retorna esa anchura
  }
  public void setWidthFrame(int widthFrame) { // Permite establecer el ancho del frame
    this.widthFrame = widthFrame; // Se le asigna al ancho del frame, el nuevo valor establecidp
  }
}
