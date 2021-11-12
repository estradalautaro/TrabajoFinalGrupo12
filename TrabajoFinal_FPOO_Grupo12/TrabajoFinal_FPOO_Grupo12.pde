//---------Zona de declaración de Objetos---------//
private Regla regla;
private int estado;
/** Configuración inicial */
public void setup() {
  size(800, 500); // Se inicializa el tamaño del lienzo
  regla = new Regla();
  //estado = MaquinaEstado.INSTRUCCIONANDO;
}
/** Metodo draw*/
public void draw() {
  background(50); // Se establece el fondo del lienzo
  imageMode(CORNERS);
  text("Frame rate: " + int(frameRate), 10, height - 3*11);

  regla.actualizarRegla();
  regla.display();
  regla.nivel1();

  switch(estado) {
  case MaquinaEstado.INSTRUCCIONANDO:
    {
      text("Buscaminas", width/2, 20);
      text("Pulsa ENTER para iniciar el juego", width/2, height-50);
      textAlign(CENTER);
      break;
    }
  case MaquinaEstado.NIVEL_1:
    {
      regla.nivel1();
      regla.display();
      break;
    }
  case MaquinaEstado.NIVEL_2:
    {
      regla.nivel2();
      regla.display();
      break;
    }
  case MaquinaEstado.NIVEL_3:
    {
      regla.nivel3();
      regla.display();
      break;
    }
  case MaquinaEstado.GANANDO_PARTIDA:
    {
      regla.actualizarRegla();
      break;
    }
  case MaquinaEstado.PERDIENDO_PARTIDA:
    {
      regla.gameOver();
      regla.actualizarRegla();
      break;
    }
  }
}


public void keyPressed() {
  if (keyCode == ENTER && (estado == MaquinaEstado.INSTRUCCIONANDO || estado == MaquinaEstado.PERDIENDO_PARTIDA || estado == MaquinaEstado.GANANDO_PARTIDA)) {
    estado = MaquinaEstado.NIVEL_1;
  }
}
