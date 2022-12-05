/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConexionSQL;

import Clases_Principales.clientes;
import java.sql.*;
import java.util.ArrayList;


/**
 *
 * @author Lenovo
 */
public class ClientesDB {

    Connection cnx = null;
    Statement st = null;
    ResultSet rs = null;
    PreparedStatement pst = null;

    public ArrayList<clientes> ListCliente() {
        ArrayList<clientes> cliente = new ArrayList();
        try {
            cnx = ConexionDB.getConneccion();
            st = cnx.createStatement();
            rs = st.executeQuery("select p.primer_nombre,p.segundo_nombre,p.primer_apellido,p.segundo_apellido,p.num_identificacion,p.fecha_nacimiento,  \n"
                + "    d.otras_senas,t.numero_telefonico,ce.correoelectronico\n"
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
                clientes c = new clientes();
                c.setNombre(rs.getNString("primer_nombre"));
                c.setSnombre(rs.getNString("segundo_nombre"));
                c.setPa(rs.getNString("primer_apellido"));
                c.setSa(rs.getNString("segundo_apellido"));
                c.setNi(rs.getNString("num_identificacion"));
                c.setFecha(rs.getNString("fecha_nacimiento"));
                c.setDi(rs.getNString("otras_senas"));
                c.setTelefono(rs.getNString("numero_telefonico"));
                c.setCe(rs.getNString("correoelectronico"));
                cliente.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error en Listado");
        }
        return cliente;
}
}
