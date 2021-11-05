private Jugador jugador;
private Fruta fruta;
private FrutaPodrida frutapodrida;

/** Configuración inicial */
public void setup() {
  size(500, 500); // Se inicializa el tamaño del lienzo
  jugador = new Jugador();
  jugador.setHeightFrame(100);
  jugador.setWidthFrame(100);
  jugador.setPosicion(new PVector(width/2, height/2));
  fruta = new Fruta();
  fruta.setHeightFrame(50);
  fruta.setWidthFrame(50);
  fruta.setPosicion(new PVector(int(random(20, width-20)), 0));
  frutapodrida = new FrutaPodrida();
  frutapodrida.setHeightFrame(50);
  frutapodrida.setWidthFrame(50);
  frutapodrida.setPosicion(new PVector(int(random(20, width-20)), 0));
}
/** Metodo draw*/
public void draw() {
  background(0); // Se establece el color del lienzo
  jugador.display();
  jugador.mover();
  fruta.display();
  fruta.caer(); 
  frutapodrida.display();
  frutapodrida.caer();
}
