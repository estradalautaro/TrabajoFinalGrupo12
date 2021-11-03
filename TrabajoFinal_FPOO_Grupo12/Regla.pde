/** Representa la clase Regla */
class Regla {
  //---------Zona de declaración de Variables---------//
  /** Se declara la variable "puntajeInicial" de tipo entero */
  private int puntajeInicial;
  /** Se declara la variable "vidaInicial" de tipo entero */
  private int vidaInicial;
  /** Se declara la variable "posicionVida" de tipo PVector */
  private PVector posicionVida;
  /** Se declara la variable "posicionPuntaje" de tipo PVector */
  private PVector posicionPuntaje;
  //---------Zona de Operaciones---------//
  /** Método que permite dibujar los objetos en el lienzo */
  public void display() {
  }
  /** Método que permite aumentar el puntaje del jugador al colisionar con una fruta */
  public void subirPuntaje() {
  }
  /** Método que permite disminuír el puntaje del jugador al colisionar con una fruta podrida */
  public void bajarPuntaje() {
  }
  /** Método que permite disminuír la vida del jugador al colisionar con una fruta podrida */
  public void bajarVida() {
  }
  /** Método que permite actualizar las reglas del juego (al pasar de nivel y al perder el juego) */
  public void actualizarRegla() {
  }
  // --------Zona de Métodos Accesores-------- //
  public int getVidaInicial() { // Permite obtener la vida inicial del jugador
    return this.vidaInicial; // Retorna la vida inicial
  }
  public int getPuntajeInicial() { // Permite obtener el puntaje inicial del jugador
    return this.puntajeInicial; // Retorna el puntaje inicial
  }
}
