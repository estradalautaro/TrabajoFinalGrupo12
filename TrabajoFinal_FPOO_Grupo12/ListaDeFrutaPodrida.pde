//---------Zona de Librerías---------//
/**Importa el programa java.util que permite el uso del list*/
import java.util.*;
/** Representa que la clase ListaDeFrutaPodrida se podra representar en el lienzo */
public class ListaDeFrutaPodrida {
  /** Permite el uso de los atributos de la clase FrutaPodrida por medio de List<FrutaPodrida> */
  private List<FrutaPodrida> frutasPodridas;
  /** Constructor por Defecto */
  public ListaDeFrutaPodrida() {
    frutasPodridas = new ArrayList <FrutaPodrida>(); // Permite agregar un elemento FrutaPodrida al metodo ArrayList
  }
  //---------Zona de operaciones---------//
  /** Función que permite agregar una fruta podrida */
  public void agregarFrutaPodrida() {
    frutasPodridas.add(new FrutaPodrida()); // Agrega un nuevo objeto fruta podrida
  }
  /**Función que permite remover una fruta podrida */
  public void removerFrutaPodrida(int posEnLista) {
    frutasPodridas.remove(posEnLista); // Remueve un objeto fruta podrida
  }
  //---------Zona de Métodos Accesores---------//
  /**Función que permite obtener el tamaño de la lista (array)*/
  public int getListaFP() { // Método accesor que permite conocer el tamaño de la lista
    return frutasPodridas.size(); // Retorna el tamaño de la lista
  }
  /**Función que permite obtener el índice de fruta podrida*/
  public FrutaPodrida getFrutaPodrida(int indice) { // Método accesor que permite conocer el índice
    return frutasPodridas.get(indice); // Retorna el índice
  }
}
