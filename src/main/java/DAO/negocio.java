
package DAO;

import interfaces.Itienda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.categoria;
import modelo.compra;
import modelo.producto;
import util.MySQLConexion;


public class negocio implements Itienda {

    @Override
    public List<categoria> listCat() {
        Connection cn = MySQLConexion.getConexion();
        List<categoria> lis = new ArrayList();
        try {
            String sql = "Select id_cate, nombre_cate, imagen from categoria";
            PreparedStatement st = cn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                categoria c = new categoria();
                c.setId(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setImagen(rs.getString(3));
                lis.add(c);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                cn.close();
            } catch (Exception ex2) {
            }
        }
        return lis;
    }

    @Override
    public producto busPro(String id) {
        Connection cn = MySQLConexion.getConexion();
        producto p = null;
        try {
            String sql = "Select id_producto, nombre, descripcion, precio_uni, stock, id_cate,imagen from productos"
                    + " where id_producto=?";
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNombre(rs.getString(2));
                p.setDesc(rs.getString(3));
                p.setPrecio(rs.getDouble(4));
                p.setStock(rs.getInt(5));
                p.setCate(rs.getInt(6));
                p.setImagen(rs.getString(7));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                cn.close();
            } catch (Exception ex2) {
            }
        }
        return p;

    }

    @Override
    public String grabaFac(String id_cliente, List<compra> lista) {
        return null;
    }


public List<producto> obtenerProductosPorCategoria(int categoriaId) {
    Connection cn = MySQLConexion.getConexion();
    List<producto> listaProductos = new ArrayList<>();
    try {
        String sql = "SELECT id_producto, nombre, descripcion, precio_uni, stock, id_cate, imagen FROM productos WHERE id_cate = ?";
        PreparedStatement st = cn.prepareStatement(sql);
        st.setInt(1, categoriaId);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            producto p = new producto();
            p.setId(rs.getInt("id_producto"));
            p.setNombre(rs.getString("nombre"));
            p.setDesc(rs.getString("descripcion"));
            p.setPrecio(rs.getDouble("precio_uni"));
            p.setStock(rs.getInt("stock"));
            p.setCate(rs.getInt("id_cate"));
            p.setImagen(rs.getString("imagen"));
            listaProductos.add(p);
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    } finally {
        try {
            cn.close();
        } catch (Exception ex2) {
        }
    }
    return listaProductos;
}

    @Override
    public List<producto> listPro(int idCategoria) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }




}
