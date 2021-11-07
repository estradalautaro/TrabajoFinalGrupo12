//---------Zona de declaración de Variables---------//
/** Se declara la variable "fondo" del tipo "PImage" */
PImage fondo;
int tiempo;
int puntos;

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
}
/** Metodo draw*/
public void draw() {
  background(fondo); // Se establece el fondo del lienzo
  jugador.display(); //Ejecuta el método "display()" del objeto "jugador"
  jugador.mover(); //Ejecuta el método "mover()" del objeto "jugador"
  jugador.esconderCanasta(); //Ejecuta el método "esconderCanasta()" del objeto "jugador"
  
  // Cartel de puntos
  String s = puntos + " pts.";
  fill(0, 102, 153);
  text(s, 10, 10, 70, 80); 


  if (millis() - tiempo > 500) {
    frutas.agregarFruta();
    frutasPodridas.agregarFrutaPodrida();
    tiempo = millis();
  }

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
