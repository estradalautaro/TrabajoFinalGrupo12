/** Representa las frutas en el juego */
class Fruta extends FrameObject {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "valorPuntaje" de tipo int */
  private int valorPuntaje;
  /** Se declara el arreglo del objeto de la clase Regla */
  private ArrayList <Regla>regla;
  //---------Zona de Operaciones---------//
   /** Constructor por defecto*/
  public Fruta() {
    int random = int(random(1, 8));
    switch(random) { 
    case 1:
      {
        this.sprite = loadImage("resources/fruits/anana.png");
        this.posicion = new PVector();
        setHeightFrame(50); 
        setWidthFrame(50); 
        setPosicion(new PVector(int(random(20, width-20)), 0)); 
        break; 
      }
      
    case 2:
      {
        this.sprite = loadImage("resources/fruits/cereza.png");
        this.posicion = new PVector();
        setHeightFrame(50);
        setWidthFrame(50);
        setPosicion(new PVector(int(random(20, width-20)), 0));
        break;
      }

    case 3:
      {
        this.sprite = loadImage("resources/fruits/frutilla.png");
        this.posicion = new PVector();
        setHeightFrame(50);
        setWidthFrame(50);
        setPosicion(new PVector(int(random(50, width-50)), 0));
        break;
      }

    case 4:
      {
        this.sprite = loadImage("resources/fruits/manzana.png");
        this.posicion = new PVector();
        setHeightFrame(50);
        setWidthFrame(50);
        setPosicion(new PVector(int(random(20, width-20)), 0));
        break;
      }
    case 5:
      {
        this.sprite = loadImage("resources/fruits/naranja.png");
        this.posicion = new PVector();
        setHeightFrame(50);
        setWidthFrame(50);
        setPosicion(new PVector(int(random(20, width-20)), 0));
        break;
      }
    case 6:
      {
        this.sprite = loadImage("resources/fruits/pera.png");
        this.posicion = new PVector();
        setHeightFrame(50);
        setWidthFrame(50);
        setPosicion(new PVector(int(random(20, width-20)), 0));
        break;
      }
    case 7:
      {
        this.sprite = loadImage("resources/fruits/sandia.png");
        this.posicion = new PVector();
        setHeightFrame(50);
        setWidthFrame(50);
        setPosicion(new PVector(int(random(20, width-20)), 0));
        break;
      }
    }
  }
  /** Método que permite desplazar la fruta en el eje y (simula que la fruta está cayendo) */
  public void caer() {
    if (this.posicion.y <= height) {
      this.posicion.y ++;
    }
  }
}
