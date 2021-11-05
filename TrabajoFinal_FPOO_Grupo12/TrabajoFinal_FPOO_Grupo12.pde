PImage fondo;// Se declara la variable "fondo" del tipo PImage
//---------Zona de declaración de Objetos---------//
private Jugador jugador; //Se declara el objeto "jugador" de la clase "Jugador"
private Fruta fruta; //Se declara el objeto "fruta" de la clase "Fruta"
private Fruta fruta1; //Se declara el objeto "fruta1" de la clase "Fruta"
private FrutaPodrida frutapodrida; //Se declara el objeto "frutapodrida" de la clase "FrutaPodrida"

/** Configuración inicial */
public void setup() {
  size(728, 455); // Se inicializa el tamaño del lienzo
  fondo = loadImage("resources/escenario/bg.jpg"); // Se le asigna la imágen "bg" a la variable "fondo" de tipo PImage
  jugador = new Jugador(); //Se instancia el objeto "jugador" de clase "Jugador" que posee un constructor por defecto
  fruta = new Fruta(); //Se instancia el objeto "fruta" de clase "Fruta" que posee un constructor por defecto
  fruta1 = new Fruta(); //Se instancia el objeto "fruta1" de clase "Fruta" que posee un constructor por defecto
  frutapodrida = new FrutaPodrida(); //Se instancia el objeto "frutapodrida" de clase "FrutaPodrida" que posee un constructor por defecto
}
/** Metodo draw*/
public void draw() {
  background(fondo); // Se establece el fondo del lienzo
  jugador.display(); //Ejecuta el método "display()" del objeto "jugador"
  jugador.mover(); //Ejecuta el método "mover()" del objeto "jugador"
  jugador.esconderCanasta(); //Ejecuta el método "esconderCanasta()" del objeto "jugador"
  jugador.colisionarF(fruta);//Ejecuta el metodo "colisionarF()" del objeto "jugador"
  jugador.colisionarFp(frutapodrida); //Ejecuta el metodo "colisionarF()" del objeto "jugador"
  fruta.display(); //Ejecuta el método "display()" del objeto "fruta"
  fruta.caer(); //Ejecuta el método "caer()" del objeto "fruta"
  fruta1.display(); //Ejecuta el método "display()" del objeto "fruta1"
  fruta1.caer(); //Ejecuta el método "caer()" del objeto "fruta1"
  frutapodrida.display(); //Ejecuta el método "display()" del objeto "frutapodrida"
  frutapodrida.caer(); //Ejecuta el método "caer()" del objeto "frutapodrida"
}
