import ddf.minim.*;
import ddf.minim.AudioPlayer;
Minim minim;
AudioPlayer cancionfondo;
//---------Zona de declaración de Objetos---------//
private Regla regla;
private int estado;
/** Configuración inicial */
public void setup() {
  size(800, 500); // Se inicializa el tamaño del lienzo
  regla = new Regla();
  minim = new Minim(this);
  cancionfondo = minim.loadFile("resources/sonido_musica/nivel1.mp3");  // Se carga la música de fondo. */
  cancionfondo.play();
  //estado = MaquinaEstado.INSTRUCCIONANDO;
}
/** Metodo draw*/
public void draw() {
  background(50); // Se establece el fondo del lienzo
  imageMode(CORNERS);
  text("Frame rate: " + int(frameRate), 10, height - 3*11);

  regla.actualizarRegla();
  regla.display();
  regla.display1();
  regla.nivel1();


}


public void keyPressed() {
  if (keyCode == ENTER && (estado == MaquinaEstados.INSTRUCCIONANDO || estado == MaquinaEstados.PERDIENDO_PARTIDA || estado == MaquinaEstados.GANANDO_PARTIDA)) {
    estado = MaquinaEstados.NIVEL_1;
  }
}
