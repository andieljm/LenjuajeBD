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
import java.sql.CallableStatement;

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

        String usuario = "oscar", clave = "12";
        Connection cnx = null;
        Statement st = null;
        ResultSet rs = null;
        CallableStatement cst = null;
        PreparedStatement pst = null;

        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("EXECUTE bodega.crearuser('casa','123','2')");

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error de conexion");
        }
    }

}
