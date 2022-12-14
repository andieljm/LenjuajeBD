/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexionSQL;

import Clases_Principales.sucursal;
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
public class SucursalDB {
    Connection cnx = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    CallableStatement cst = null;

    public ArrayList<sucursal> ListSucursal() {
        ArrayList<sucursal> sucursal = new ArrayList();
        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("select s.nombre_sucursal,d.otras_senas,cr.nombre_distrito\n"
                + "from sucursal s\n"
                + "inner join direccion d\n"
                + "on s.id_direccion = d.id_direccion\n"
                + "inner join distrito_cr cr\n"
                + "on d.codigo_distrito = cr.codigo_distrito");
            while (rs.next()) {
                sucursal c = new sucursal();
                c.setNombre(rs.getNString("nombre_sucursal"));
                c.setDir(rs.getNString("otras_senas"));
                c.setDistrito(rs.getNString("nombre_distrito"));
                sucursal.add(c);
            }
            cnx = null;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error en Listado");
        }
        return sucursal;
}
    //crear sucursal
    public boolean crearsucu(String nom, String dir,String dis) {

        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.crearsucur(?,?,?)}");
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
