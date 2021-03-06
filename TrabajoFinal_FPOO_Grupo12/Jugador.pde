/** Representa al jugador en el juego */
class Jugador extends FrameObject {
  //---------Zona de Operaciones---------//
  /** Constructor por defecto */
  public Jugador() {
    this.sprite = loadImage("resources/maincharacter/maincharacter.png"); // Se le asigna la imágen "maincharacter.png" a la variable "sprite" de tipo PImage
    setPosicion(new PVector(width/2, height/2)); // Se le asigna esta posición para el sprite que se creará
    setHeightFrame(100); // Se le asigna este alto al sprite que se creará
    setWidthFrame(100); // Se le asigna este ancho al sprite que se creará
  }
  /** Método que permite mover al jugador en el eje X (de izquierda a derecha, siguiendo el cursor del mouse) */
  public void mover() {
    this.posicion.x = mouseX; // Se iguala la posición X del jugador a la posición X del mouse
    this.posicion.y = height-(height/4); // Se le asigna la posición Y del jugador a 1/4 del alto del lienzo
    posicion.x = constrain(posicion.x, regla.escenario.getPosicion().x + 30, regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40); // Establece un límite entre dos posiciones (x o y), en este caso x, representando los límites del escenario para el jugador
  }
  /** Método que cambia de sprite mediante el click izquierdo del mouse */
  public void esconderCanasta() {
    if (mousePressed) { // Si algún botón del mouse está siendo presionado, entonces
      this.sprite = loadImage("resources/maincharacter/mainA_3.png"); // Se le asigna la imágen "mainA_3.png" a la variable "sprite" de tipo PImage
      setHeightFrame(100); // Se le asigna este alto al sprite que se creará
      setWidthFrame(70); // Se le asigna este ancho al sprite que se creará
    } else { // Si se deja de presionar el boton del mouse, entonces
      this.sprite = loadImage("resources/maincharacter/maincharacter.png"); // Se le asigna la imágen "maincharacter.png" a la variable "sprite" de tipo PImage
      setHeightFrame(100); // Se le asigna este alto al sprite que se creará
      setWidthFrame(100); // Se le asigna este ancho al sprite que se creará
    }
  }
}
