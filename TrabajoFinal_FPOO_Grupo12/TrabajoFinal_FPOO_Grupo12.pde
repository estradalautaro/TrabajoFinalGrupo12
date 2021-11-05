private Jugador jugador;
private Fruta fruta;
private FrutaPodrida frutapodrida;

/** Configuración inicial */
public void setup() {
  size(500, 500);
  jugador = new Jugador();
  fruta = new Fruta();
  frutapodrida = new FrutaPodrida();
}
/** Metodo draw*/
public void draw() {
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
}
