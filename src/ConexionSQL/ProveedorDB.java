/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexionSQL;

import Clases_Principales.proveedor;
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
public class ProveedorDB {

    Connection cnx = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    CallableStatement cst = null;

    public ArrayList<proveedor> ListProvedores1() {
        ArrayList<proveedor> proveedores = new ArrayList();
        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("select p.nombre_empresa,ce.correoelectronico,t.numero_telefonico \n"
                    + "from proveedor p\n"
                    + "inner join correo_electronico ce\n"
                    + "on p.id_correoe = ce.id_correoe\n"
                    + "inner join telefono t\n"
                    + "on t.id_telefono = p.id_telefono");
            while (rs.next()) {
                proveedor p = new proveedor();
                p.setNombre(rs.getNString("nombre_empresa"));
                p.setCorreo(rs.getNString("correoelectronico"));
                p.setTelefono(rs.getNString("numero_telefonico"));
                proveedores.add(p);
            }
            cnx = null;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error en Listado");
        }
        return proveedores;
    }
    public boolean crearPro(String nom ,String corre,String tel) {

        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.nuevo_pro(?,?,?)}");
            cst.setNString(1, nom);
            cst.setNString(2, corre);
            cst.setNString(3, tel);
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
