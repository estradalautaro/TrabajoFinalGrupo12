//---------Zona de Librerías---------//
/**Importa el programa java.util que permite el uso del list*/
import java.util.*;
/** Representa que la clase ListaDeFruta se podra representar en el lienzo */
public class ListaDeFruta {
  /** Permite el uso de los atributos de la clase Fruta por medio de List<Fruta> */
  private List<Fruta> frutas;
  /** Constructor por Defecto */
  public ListaDeFruta() {
    frutas = new ArrayList <Fruta>(); // Permite agregar un elemento Fruta al metodo ArrayList
  }
  //---------Zona de operaciones---------//
  /** Función que permite agregar una fruta */
  public void agregarFruta() {
    frutas.add(new Fruta()); // Agrega un nuevo objeto fruta
  }
  /** Función que permite remover una fruta */
  public void removerFruta(int posEnLista) {
    frutas.remove(posEnLista); // Remueve un objeto fruta
  }
  //---------Zona de Métodos Accesores---------//
  /**Función que permite obtener el tamaño de la lista (array)*/
  public int tamanioLista() { // Método accesor que permite conocer el tamaño de la lista
    return frutas.size();
  }
  /**Función que permite obtener el índice de fruta*/
  public Fruta getFruta(int indice) { // Método accesor que permite conocer el indice
    return frutas.get(indice);
  }
}
