//---------Zona de declaración de Objetos---------//
private Regla regla;
/** Configuración inicial */
public void setup() {
  size(728, 455); // Se inicializa el tamaño del lienzo
  regla = new Regla();
}
/** Metodo draw*/
public void draw() {
  background(50); // Se establece el fondo del lienzo
  regla.display();
  regla.nivel1();
}
