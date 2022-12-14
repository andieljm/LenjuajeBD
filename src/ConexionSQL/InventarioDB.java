/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexionSQL;

import Clases_Principales.inventario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Lenovo
 */
public class InventarioDB {

    Connection cnx = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    CallableStatement cst = null;

    public ArrayList<inventario> ListInventario1() {
        ArrayList<inventario> inventarios = new ArrayList();
        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("select p.nombre_producto,p.precio_producto,p.cantidad,p.fecha_produccion,p.fecha_vencimiento, \n"
                    + "p.descripcion_producto,pr.nombre_empresa,m.nombre_marca,c.nombre_categoria\n"
                    + "from producto p\n"
                    + "inner join proveedor pr\n"
                    + "on pr.id_proveedor = p.id_proveedor\n"
                    + "inner join marca m\n"
                    + "on p.id_marca = m.id_marca\n"
                    + "inner join categoria c \n"
                    + "on p.id_categoria = c.id_categoria");
            while (rs.next()) {
                inventario i = new inventario();
                i.setNombre(rs.getNString("nombre_producto"));
                i.setPrecio(rs.getNString("precio_producto"));
                i.setCantidad(rs.getNString("cantidad"));
                i.setProduncion(rs.getNString("fecha_produccion"));
                i.setVencimiento(rs.getNString("fecha_vencimiento"));
                i.setDes(rs.getNString("descripcion_producto"));
                i.setPro(rs.getNString("nombre_empresa"));
                i.setMarca(rs.getNString("nombre_marca"));
                i.setCategoria(rs.getNString("nombre_categoria"));
                inventarios.add(i);
            }
            cnx = null;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error en Listado");
        }
        return inventarios;
    }
    //crear producto
    public boolean crearP(String nom ,String fec,String ven,String cant,String precio,String desc,String pro,String cat,String mar) {

        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.registro_producto(?,?,?,?,?,?,?,?,?)}");
            cst.setNString(1, nom);
            cst.setNString(2, fec);
            cst.setNString(3, ven);
            cst.setNString(4, cant);
            cst.setNString(5, precio);
            cst.setNString(6, desc);
            cst.setNString(7, pro);
            cst.setNString(8, cat);
            cst.setNString(9, mar);
            cst.execute();
            cnx = null;
            cst = null;
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error de conexion");
        }

        return false;
    }
    // eliminar producto
    public boolean eliminarP(String produc) {

        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.eliminaP(?)}");
            cst.setNString(1, produc);
            cst.execute();
            cnx = null;
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error de conexion");
        }

        return false;
    }
    //modificar producto
    public boolean modiP(String produc,String ncant) {

        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.modip(?,?)}");
            cst.setNString(1, produc);
            cst.setNString(2, ncant);
            cst.execute();
            cnx = null;
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error de conexion");
        }

        return false;
    }
}
