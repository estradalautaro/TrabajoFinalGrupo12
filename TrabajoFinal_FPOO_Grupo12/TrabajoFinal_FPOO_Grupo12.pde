//---------Zona de declaración de Objetos---------//
private Jugador jugador; //Se declara el objeto "jugador" de la clase "Jugador"
private Fruta fruta; //Se declara el objeto "fruta" de la clase "Fruta"
private Fruta fruta1; //Se declara el objeto "fruta1" de la clase "Fruta"
private FrutaPodrida frutapodrida; //Se declara el objeto "frutapodrida" de la clase "FrutaPodrida"

/** Configuración inicial */
public void setup() {
  size(500, 500); // Se inicializa el tamaño del lienzo
  jugador = new Jugador(); //Se instancia el objeto "jugador" de clase "Jugador" que posee un constructor por defecto
  fruta = new Fruta(); //Se instancia el objeto "fruta" de clase "Fruta" que posee un constructor por defecto
  fruta1 = new Fruta(); //Se instancia el objeto "fruta1" de clase "Fruta" que posee un constructor por defecto
  frutapodrida = new FrutaPodrida(); //Se instancia el objeto "frutapodrida" de clase "FrutaPodrida" que posee un constructor por defecto
}
/** Metodo draw*/
public void draw() {
<<<<<<< HEAD
  background(0); // Se establece el color del lienzo
  jugador.display(); //Ejecuta el método "display()" del objeto "jugador"
  jugador.mover(); //Ejecuta el método "mover()" del objeto "jugador"
  jugador.esconderCanasta(); //Ejecuta el método "esconderCanasta()" del objeto "jugador"
  fruta.display(); //Ejecuta el método "display()" del objeto "fruta"
  fruta.caer(); //Ejecuta el método "caer()" del objeto "fruta"
  fruta1.display(); //Ejecuta el método "display()" del objeto "fruta1"
  fruta1.caer(); //Ejecuta el método "caer()" del objeto "fruta1"
  frutapodrida.display(); //Ejecuta el método "display()" del objeto "frutapodrida"
  frutapodrida.caer(); //Ejecuta el método "caer()" del objeto "frutapodrida"
=======
  background(0);
  jugador.display();
  jugador.mover();
  jugador.esconderCanasta();
  jugador.colisionarF(fruta);
  jugador.colisionarFp(frutapodrida);
  fruta.display();
  fruta.caer();
  frutapodrida.display();
  frutapodrida.caer();
>>>>>>> 9af0ade0c75069756fb758a3b45a6375fd45a35c
}
