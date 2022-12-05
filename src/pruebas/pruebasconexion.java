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
        rs = st.executeQuery("select  p.primer_nombre,p.segundo_nombre,p.primer_apellido,p.segundo_apellido,p.num_identificacion,p.fecha_nacimiento,  \n"
                + "    d.otras_senas,t.numero_telefonico,ce.correoelectronico   \n"
                + "    from LBD.persona p  \n"
                + "    inner join cliente c\n"
                + "    on c.id_persona = p.id_persona\n"
                + "    inner join direccion d \n"
                + "    on  p.id_direccion = d.id_direccion\n"
                + "    inner join telefono t on\n"
                + "    p.id_telefono = t.id_telefono\n"
                + "    inner join correo_electronico ce \n"
                + "    on p.id_correoe = ce.id_correoe ");

        while (rs.next()) {
            System.out.println(rs.getNString("primer_nombre"));
            
        }
    }

}
