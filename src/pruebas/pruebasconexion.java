/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package pruebas;

import ConexionSQL.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Lenovo
 */
public class pruebasconexion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // pruebas utilizando paquetes en java
        int uno = 2, dos = 3;
        Connection cnx = null;
        Statement st = null;
        ResultSet rs = null;
        PreparedStatement pst = null;

        cnx = ConexionDB.getConneccion();
        st = cnx.createStatement();
        rs = st.executeQuery("select p.nombre_empresa,ce.correoelectronico,t.numero_telefonico \n"
                + "from proveedor p\n"
                + "inner join correo_electronico ce\n"
                + "on p.id_correoe = ce.id_correoe\n"
                + "inner join telefono t\n"
                + "on t.id_telefono = p.id_telefono");

        while (rs.next()) {
            System.out.println(rs.getNString("nombre_empresa"));

        }
    }

}
