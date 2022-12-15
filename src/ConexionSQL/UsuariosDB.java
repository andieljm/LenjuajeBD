/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexionSQL;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Lenovo
 */
public class UsuariosDB {

    public static String r;
    Connection cnx = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    CallableStatement cst = null;

    public boolean verifica(String usuario, String clave) {
        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("SELECT   NOMBRE_USUARIO,CONTRASENA,ID_USUARIOROL   \n"
                    + "from usuario");
            while (rs.next()) {
                if (usuario.equalsIgnoreCase(rs.getNString("NOMBRE_USUARIO")) && clave.equalsIgnoreCase(rs.getNString("CONTRASENA"))) {

                    r = rs.getNString("ID_USUARIOROL");

                    return true;
                } else {
                }
            }
            cnx = null;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error de conexion");
        }
        return false;

    }

    //crear usuario
    public boolean crearu(String nusuario, String nclave) {

        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.crearuser(?,?,?)}");
            cst.setNString(1, nusuario);
            cst.setNString(2, nclave);
            cst.setNString(3, "2");
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
