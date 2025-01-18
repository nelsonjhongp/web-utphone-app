
package interfaces;
import modelo.*;
import java.util.*;
public interface Itienda {
    List<categoria> listCat();
    List<producto> listPro(int idCategoria);
    producto busPro(String id);

    String grabaFac(String id_cliente, List<compra> lista);
}