//---------Zona de Librerías---------//
import ddf.minim.*;
import ddf.minim.AudioPlayer;
//---------Zona de declaración de Objetos---------//
private Minim minim;
private AudioPlayer cancionPantalla;
private AudioPlayer cancionNivel1;
private AudioPlayer cancionNivel2;
private AudioPlayer cancionNivel3;
private Regla regla;
/** Configuración inicial */
public void setup() {
  size(800, 500); // Se inicializa el tamaño del lienzo
  regla = new Regla();
  minim = new Minim(this);
  cancionPantalla = minim.loadFile("resources/sonido_musica/pantallaInicio.mp3");  // Se carga la música de fondo. */
  cancionNivel1 = minim.loadFile("resources/sonido_musica/nivel1.mp3");  // Se carga la música de fondo. */
  cancionNivel2 = minim.loadFile("resources/sonido_musica/nivel2.mp3");  // Se carga la música de fondo. */
  cancionNivel3 = minim.loadFile("resources/sonido_musica/nivel3.mp3");  // Se carga la música de fondo. */
}
/** Metodo draw*/
public void draw() {
  background(50); // Se establece el fondo del lienzo
  imageMode(CORNERS);
  //text("Frame rate: " + int(frameRate), 10, height - 3*11);
  regla.condicionEstado();
  switch(regla.estado) {
  case 0:
    regla.escenario = new Escenario(regla.estadoInicial);
    regla.escenario.setPosicion(new PVector(0, 0));
    regla.escenario.setTamanio(new PVector(width, height));
    regla.escenario.display();
    cancionPantalla.play();
    regla.show = false;
    println("Estado 0");
    break;
  case 1:
    regla.display();
    regla.nivel1();
    cancionNivel1.play();
    regla.show = true;
    println("Estado 1");
    break;
  case 2:
    regla.display();
    regla.nivel2();
    cancionNivel2.play();
    regla.show = true;
    println("Estado 2");
    break;
  case 3:
    regla.display();
    regla.nivel3();
    cancionNivel3.play();
    regla.show = true;
    println("Estado 3");
    break;
  case 4:
    regla.winner();
    regla.show = false;
    println("Estado 4");
    break;
  case 5:
    regla.gameOver();
    regla.show = false;
    println("Estado 5");
    break;
  }
}
public void keyPressed() {
  if (keyCode == ENTER && regla.estado == MaquinaEstados.INSTRUCCIONANDO) {
    regla.estado = MaquinaEstados.NIVEL_1;
    regla.actualizarRegla();
  }
  if (keyCode == 'R' && (regla.estado == MaquinaEstados.PERDIENDO_PARTIDA || regla.estado == MaquinaEstados.GANANDO_PARTIDA)) {
    regla.estado = MaquinaEstados.INSTRUCCIONANDO;
    regla.actualizarRegla();
  }
}
