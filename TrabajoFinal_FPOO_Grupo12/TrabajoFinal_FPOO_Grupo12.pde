//---------Zona de declaración de Variables---------//
/** Se declara la variable "fondo" del tipo "PImage" */
PImage fondo;
//---------Zona de declaración de Objetos---------//
private Jugador jugador; //Se declara el objeto "jugador" de la clase "Jugador"
private ListaDeFruta frutas;
private ListaDeFrutaPodrida frutasPodridas;

/** Configuración inicial */
public void setup() {
  size(728, 455); // Se inicializa el tamaño del lienzo
  fondo = loadImage("resources/escenario/bg.jpg"); // Se le asigna la imágen "bg" a la variable "fondo" de tipo PImage
  jugador = new Jugador(); //Se instancia el objeto "jugador" de clase "Jugador" que posee un constructor por defecto
  frutas = new ListaDeFruta();
  frutasPodridas = new ListaDeFrutaPodrida();
  //frutas = new Fruta(); //Se instancia el objeto "fruta" de clase "Fruta" que posee un constructor por defecto
  //fruta1 = new Fruta(); //Se instancia el objeto "fruta1" de clase "Fruta" que posee un constructor por defecto
  //frutapodrida = new FrutaPodrida(); //Se instancia el objeto "frutapodrida" de clase "FrutaPodrida" que posee un constructor por defecto
}
/** Metodo draw*/
public void draw() {
  background(fondo); // Se establece el fondo del lienzo
  jugador.display(); //Ejecuta el método "display()" del objeto "jugador"
  jugador.mover(); //Ejecuta el método "mover()" del objeto "jugador"
  jugador.esconderCanasta(); //Ejecuta el método "esconderCanasta()" del objeto "jugador"

  int indiceFrutaBorrar=-1;
  for (int i=0; i<frutas.tamanioLista(); i++) {
    frutas.getFruta(i).display();
    frutas.getFruta(i).caer();
    if (frutas.getFruta(i).colisionarF(jugador)) {
      indiceFrutaBorrar=i;
    }
  }
  if (indiceFrutaBorrar>-1) {
    frutas.removerFruta(indiceFrutaBorrar);
  }

  int indiceFrutaPodridaBorrar=-1;
  for (int i=0; i<frutasPodridas.tamanioListaFP(); i++) {
    frutasPodridas.getFrutaPodrida(i).display();
    frutasPodridas.getFrutaPodrida(i).caer();
    if (frutasPodridas.getFrutaPodrida(i).colisionarFP(jugador)) {
      indiceFrutaPodridaBorrar=i;
    }
  }
  if (indiceFrutaPodridaBorrar>-1) {
    frutasPodridas.removerFrutaPodrida(indiceFrutaPodridaBorrar);
  }
}
//fruta.colisionarF(jugador); //Ejecuta el metodo "colisionarF()" del objeto "fruta"
//fruta1.colisionarF(jugador); //Ejecuta el metodo "colisionarF()" del objeto "fruta"
//frutapodrida.colisionarFP(jugador); //Ejecuta el metodo "colisionarFP()" del objeto "frutapodrida"
//fruta.display(); //Ejecuta el método "display()" del objeto "fruta"
//fruta.caer(); //Ejecuta el método "caer()" del objeto "fruta"
//fruta1.display(); //Ejecuta el método "display()" del objeto "fruta1"
//fruta1.caer(); //Ejecuta el método "caer()" del objeto "fruta1"
//frutapodrida.display(); //Ejecuta el método "display()" del objeto "frutapodrida"
//frutapodrida.caer(); //Ejecuta el método "caer()" del objeto "frutapodrida"
//}
