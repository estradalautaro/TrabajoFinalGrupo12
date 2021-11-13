//---------Zona de Librerías---------//
/**Importa el programa ddf.minim que permite el uso de música*/
import ddf.minim.*;
/**Importa el programa ddf.minim.AudioPlayer que permite el uso de reproductores de música*/
import ddf.minim.AudioPlayer;
//---------Zona de declaración de Objetos---------//
private Minim minim;
private AudioPlayer cancionPantalla;
private AudioPlayer cancionNivel1;
private AudioPlayer cancionNivel2;
private AudioPlayer cancionNivel3;
private Regla regla;
private Escenario escenario;
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
  regla.condicionEstado();
  switch(regla.estado) {
  case 0:
    escenario = new Escenario(loadImage("resources/escenario/portada.png"));
    escenario.setPosicion(new PVector(0, 0));
    escenario.setTamanio(new PVector(width, height));
    escenario.display();
    cancionPantalla.play();
    regla.show = false;
    break;
  case 1:
    regla.display();
    regla.nivel1();
    cancionPantalla.close();
    cancionNivel1.play();
    regla.show = true;
    break;
  case 2:
    regla.display();
    regla.nivel2();
    cancionNivel1.close();
    cancionNivel2.play();
    regla.show = true;
    break;
  case 3:
    regla.display();
    regla.nivel3();
    cancionNivel2.close();
    cancionNivel3.play();
    regla.show = true;
    break;
  case 4:
    regla.winner();
    cancionNivel3.close();
    regla.show = false;
    break;
  case 5:
    regla.gameOver();
    cancionNivel1.close();
    cancionNivel2.close();
    cancionNivel3.close();
    regla.show = false;
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
  }
}
