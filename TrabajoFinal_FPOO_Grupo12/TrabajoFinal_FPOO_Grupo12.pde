//---------Zona de Librerías---------//
/**Importa el programa ddf.minim que permite el uso de música*/
import ddf.minim.*;
/**Importa el programa ddf.minim.AudioPlayer que permite el uso de reproductores de música*/
import ddf.minim.AudioPlayer;
//---------Zona de declaración de Objetos---------//
private Minim minim; // Se declara el objeto "minim" de la clase "Minim"
private AudioPlayer cancionPantalla; // Se declara el objeto "cancionPantalla" del reproductor de musica "AudioPlayer"
private AudioPlayer cancionNivel1; // Se declara el objeto "cancionNivel1" del reproductor de musica "AudioPlayer"
private AudioPlayer cancionNivel2; // Se declara el objeto "cancionNivel2" del reproductor de musica "AudioPlayer"
private AudioPlayer cancionNivel3; // Se declara el objeto "cancionNivel3" del reproductor de musica "AudioPlayer"
private AudioPlayer cancionVictoria; // Se declara el objeto "cancionVictoria" del reproductor de musica "AudioPlayer"
private AudioPlayer cancionDerrota; // Se declara el objeto "cancionDerrota" del reproductor de musica "AudioPlayer"
private Regla regla; //Se declara el objeto "regla" de la clase "Regla"
private Escenario escenario; //Se declara el objeto "escenario" de la clase "Escenario"
/** Configuración inicial */
public void setup() {
  size(800, 500); // Se inicializa el tamaño del lienzo
  regla = new Regla();
  minim = new Minim(this);
  cancionPantalla = minim.loadFile("resources/sonido_musica/pantallaInicio.mp3");  // Se carga la música de fondo. */
  cancionNivel1 = minim.loadFile("resources/sonido_musica/nivel1.mp3");  // Se carga la música de fondo. */
  cancionNivel2 = minim.loadFile("resources/sonido_musica/nivel2.mp3");  // Se carga la música de fondo. */
  cancionNivel3 = minim.loadFile("resources/sonido_musica/nivel3.mp3");  // Se carga la música de fondo. */
  cancionVictoria = minim.loadFile("resources/sonido_musica/SoundVictory.mp3");  // Se carga la música de fondo. */
  cancionDerrota = minim.loadFile("resources/sonido_musica/Gameover2.mp3");  // Se carga la música de fondo. */
}
/** Metodo draw*/
public void draw() {
  background(50); // Se establece el fondo del lienzo
  regla.cambiarEstado();
  switch(regla.estado) {
  case 0:
    escenario = new Escenario(loadImage("resources/escenario/portada.png")); //Se instancia una imagen a "escenario"
    escenario.setPosicion(new PVector(0, 0)); //Se instancia la posicion del "escenario" con los siguientes valores
    escenario.setTamanio(new PVector(width, height));  //Se instancia el tamaño de la imagen del "escenario"
    escenario.display(); // Metodo que permite mostrar el "escenario"
    cancionVictoria.close();  // Metodo que permite detener la musica
    cancionDerrota.close(); // Metodo que permite detener la musica
    cancionPantalla.play(); // Metodo que permite iniciar la musica
    regla.show = false; // Se instancia el booleano "show" en falso
    break; // Sentencia que marca la finalizacion del caso "0"
  case 1:
    regla.display(); // Metodo que permite mostrar los objetos de la clase "regla"
    regla.mostrarNivel1(); // Metodo que permite mostrar el "nivel1"
    cancionPantalla.close(); // Metodo que permite detener la musica
    cancionNivel1.play(); // Metodo que permite iniciar la musica
    regla.show = true; // Se instancia el booleano "show" en verdadero
    break; // Sentencia que marca la finalizacion del caso "1"
  case 2:
    regla.display(); // Metodo que permite mostrar los objetos de la clase "regla"
    regla.mostrarNivel2(); // Metodo que permite mostrar el "nivel2"
    cancionNivel1.close(); // Metodo que permite detener la musica
    cancionNivel2.play(); // Metodo que permite iniciar la musica
    regla.show = true; // Se instancia el booleano "show" en verdadero
    break; // Sentencia que marca la finalizacion del caso "2"
  case 3:
    regla.display(); // Metodo que permite mostrar los objetos de la clase "regla"
    regla.mostrarNivel3(); // Metodo que permite mostrar el "nivel3"
    cancionNivel2.close(); // Metodo que permite detener la musica
    cancionNivel3.play(); // Metodo que permite iniciar la musica
    regla.show = true; // Se instancia el booleano "show" en verdadero
    break; // Sentencia que marca la finalizacion del caso "3"
  case 4:
    regla.mostrarWin(); // Metodo que permite mostrar el "winner"
    cancionNivel3.close(); // Metodo que permite detener la musica
    cancionVictoria.play(); // Metodo que permite iniciar la musica
    regla.show = false; // Se instancia el booleano "show" en falso
    break; // Sentencia que marca la finalizacion del caso "4"
  case 5:
    regla.mostrarGameOver(); // Metodo que permite mostrar el "gameOver"
    cancionNivel1.close(); // Metodo que permite detener la musica
    cancionNivel2.close(); // Metodo que permite detener la musica
    cancionNivel3.close(); // Metodo que permite detener la musica
    cancionDerrota.play(); // Metodo que permite iniciar la musica
    regla.show = false; // Se instancia el booleano "show" en falso
    break; // Sentencia que marca la finalizacion del caso "5"
  }
}
/** Método que permite detectar si una tecla fue presionada */
public void keyPressed() {
  if (keyCode == ENTER && regla.estado == MaquinaEstados.INSTRUCCIONANDO) { // Si la tecla presionada es ENTER, estando en la MaquinaEstados.INSTRUCCIONANDO, entonces
    regla.estado = MaquinaEstados.NIVEL_1;
    regla.actualizarRegla();
  }
  if (keyCode == 'R' && (regla.estado == MaquinaEstados.PERDIENDO_PARTIDA || regla.estado == MaquinaEstados.GANANDO_PARTIDA)) { // Si la tecla presionada es "R", estando en la MaquinaEstados.PERDIENDO_PARTIDA o MaquinaEstados.GANANDO_PARTIDA, entonces
    regla.estado = MaquinaEstados.INSTRUCCIONANDO;
  }
}
