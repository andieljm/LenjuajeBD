/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexionSQL;

import Clases_Principales.Provincias;
import java.sql.*;
import java.util.ArrayList;


/**
 *
 * @author Lenovo
 */
public class ProvinciaDB {

    Connection cnx = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pst = null;

    public ArrayList<Provincias> ListProvincia() {
        ArrayList<Provincias> provincia = new ArrayList();
        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("SELECT NOMBRE_PROVINCIA  "
                    + "  FROM PROVINCIA_CR  ");
            while (rs.next()) {
                Provincias p = new Provincias();
                p.setNombre_provincia(rs.getNString("NOMBRE_PROVINCIA"));
                provincia.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error en Listado");
        }
        return provincia;
}
}
