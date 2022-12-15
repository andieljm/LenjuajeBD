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
public class pruebas2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Connection cnx = null;
        CallableStatement cst = null;
        try {
            cnx = ConexionDB.getConneccion();
            cst = cnx.prepareCall("{call bodega.crearuser(?,?,?)}");
            cst.setNString(1, "joan");
            cst.setNString(2, "333");
            cst.setNString(3, "2");
            cst.execute();
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error de conexion");
        }
    }

}
