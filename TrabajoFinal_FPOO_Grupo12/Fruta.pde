/** Representa las frutas en el juego */
class Fruta extends FrameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "valorPuntaje" de tipo int */
  private int valorPuntaje;
  //---------Zona de Operaciones---------//
  /** Constructor por defecto */
  public Fruta() {
    int random = int(random(1, 8)); // Se declara la variable "random" de tipo entero y se le asigna un valor entero random entre 1 y 7
    switch(random) { // Evalúa la variable "random" para ejecutar el caso correspondiente
    case 1: // Caso 1
      {
        this.sprite = loadImage("resources/fruits/anana.png"); // Se le asigna la imágen "anana.png" a la variable "sprite" de tipo PImage
        this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
        setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
        setHeightFrame(60); // Se le asigna este alto al sprite que se creará
        setWidthFrame(50); // Se le asigna este ancho al sprite que se creará
        setValorPuntaje(4); // Se le asigna este valor de puntaje a la fruta
        break; // Finaliza el caso
      }

    case 2: // Caso 2
      {
        this.sprite = loadImage("resources/fruits/cereza.png"); // Se le asigna la imágen "cereza.png" a la variable "sprite" de tipo PImage
        this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
        setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
        setHeightFrame(30); // Se le asigna este alto al sprite que se creará
        setWidthFrame(50); // Se le asigna este ancho al sprite que se creará
        setValorPuntaje(2); // Se le asigna este valor de puntaje a la fruta
        break; // Finaliza el caso
      }

    case 3: // Caso 3
      {
        this.sprite = loadImage("resources/fruits/frutilla.png"); // Se le asigna la imágen "frutilla.png" a la variable "sprite" de tipo PImage
        this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
        setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
        setHeightFrame(40); // Se le asigna este alto al sprite que se creará
        setWidthFrame(30); // Se le asigna este ancho al sprite que se creará
        setValorPuntaje(3); // Se le asigna este valor de puntaje a la fruta
        break; // Finaliza el caso
      }

    case 4: // Caso 4
      {
        this.sprite = loadImage("resources/fruits/manzana.png"); // Se le asigna la imágen "manzana.png" a la variable "sprite" de tipo PImage
        this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
        setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
        setHeightFrame(50); // Se le asigna este alto al sprite que se creará
        setWidthFrame(40); // Se le asigna este ancho al sprite que se creará
        setValorPuntaje(1); // Se le asigna este valor de puntaje a la fruta
        break; // Finaliza el caso
      }
    case 5: // Caso 5
      {
        this.sprite = loadImage("resources/fruits/naranja.png"); // Se le asigna la imágen "naranja.png" a la variable "sprite" de tipo PImage
        this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
        setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
        setHeightFrame(40); // Se le asigna este alto al sprite que se creará
        setWidthFrame(40); // Se le asigna este ancho al sprite que se creará
        setValorPuntaje(5); // Se le asigna este valor de puntaje a la fruta
        break; // Finaliza el caso
      }
    case 6: // Caso 6
      {
        this.sprite = loadImage("resources/fruits/pera.png"); // Se le asigna la imágen "pera.png" a la variable "sprite" de tipo PImage
        this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
        setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
        setHeightFrame(60); // Se le asigna este alto al sprite que se creará
        setWidthFrame(50); // Se le asigna este ancho al sprite que se creará
        setValorPuntaje(6); // Se le asigna este valor de puntaje a la fruta
        break; // Finaliza el caso
      }
    case 7: // Caso 7
      {
        this.sprite = loadImage("resources/fruits/sandia.png"); // Se le asigna la imágen "sandia.png" a la variable "sprite" de tipo PImage
        this.velocidad = random(1, 6); // Se le asigna una velocidad random al sprite que se creará
        setPosicion(new PVector(int(random((regla.escenario.getPosicion().x + 30), (regla.escenario.getPosicion().x + regla.escenario.getTamanio().x - 40))), regla.escenario.getPosicion().y + 10)); // Se le asigna esta posición para el sprite que se creará
        setHeightFrame(80); // Se le asigna este alto al sprite que se creará
        setWidthFrame(50); // Se le asigna este ancho al sprite que se creará
        setValorPuntaje(7); // Se le asigna este valor de puntaje a la fruta
        break; // Finaliza el caso
      }
    }
  }
  /** Método que permite desplazar la fruta en el eje y (simula que la fruta está cayendo) */
  public void caer() {
    if (this.posicion.y <= height) { // Si la posición en y de la fruta es menor o igual que el alto del lienzo, entonces
      this.posicion.y += this.velocidad; // A la posición en y se le irá aumentando el valor de la velocidad
      posicion.y = constrain(posicion.y, regla.escenario.getPosicion().y + 10, regla.escenario.getTamanio().y - this.heightFrame/2);
    }
  }
  /** Método que permite detectar si hay colisión entre las frutas y el jugador */
  public boolean colisionarF(Jugador jugador) {
    /** Se declara la variable "colisionF" de tipo boolean */
    boolean colisionF = false;
    if (this.posicion.x >= jugador.getPosicion().x - 15 &&
      this.posicion.x <= jugador.getPosicion().x + 15 &&
      this.posicion.y >= jugador.getPosicion().y - 15 &&
      this.posicion.y <= jugador.getPosicion().y + 15) {
      colisionF = true;
    }
    if(mousePressed){
      colisionF = false;
    }
    return colisionF;
  }

  public boolean colisionarEscenarioF(Escenario escenario) {
    /** Se declara la variable "colisionarEscenarioF" de tipo boolean */
    boolean colisionarEscenarioF = false;
    if (this.posicion.y >= escenario.getTamanio().y - this.heightFrame/2) {
      colisionarEscenarioF = true;
    }
    return colisionarEscenarioF;
  }
  //--------Zona de Métodos Accesores--------//
  public int getValorPuntaje() { // Permite obtener la posición del jugador
    return valorPuntaje; // Retorna la posicion actual
  }
  public void setValorPuntaje(int valorPuntaje) { // Permite establecer el ancho del frame
    this.valorPuntaje = valorPuntaje; // Se le asigna al ancho del frame, el nuevo valor establecidp
  }
}
