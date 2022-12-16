/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexionSQL;

import Clases_Principales.facturas;
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
public class FacturasDB {

    Connection cnx = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    CallableStatement cst = null;

    public ArrayList<facturas> ListFacturas() {
        ArrayList<facturas> facturaes = new ArrayList();
        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("select pe.primer_nombre,pe.primer_apellido,p.nombre_producto,d.cantidad,f.fecha,f.pago\n"
                    + "from detalleFactura d\n"
                    + "inner join Factura f\n"
                    + "on d.id_detalle = f.id_detalle\n"
                    + "inner join producto p\n"
                    + "on p.id_producto = d.id_producto,\n"
                    + "cliente c\n"
                    + "inner join persona pe\n"
                    + "on c.id_persona = pe.id_persona\n"
                    + "where c.id_cliente = d.id_cliente");
            while (rs.next()) {
                facturas f = new facturas();
                f.setNombre(rs.getNString("primer_nombre"));
                f.setApellido(rs.getNString("primer_apellido"));
                f.setCantidad(rs.getNString("cantidad"));
                f.setProducto(rs.getNString("nombre_producto"));
                f.setFecha(rs.getNString("fecha"));
                f.setPago(rs.getNString("pago"));
                facturaes.add(f);
            }
            cnx = null;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error en Listado");
        }
        return facturaes;
    }
    //crear factura
    public boolean crearfac(String nom, String dir,String dis) {

        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.factura(?,?,?)}");
            cst.setNString(1, nom);
            cst.setNString(2, dir);
            cst.setNString(3, dis);
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
}
