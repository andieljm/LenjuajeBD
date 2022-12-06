/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases_Principales;

/**
 *
 * @author Lenovo
 */
public class proveedor {
    private String nombre;
    private String correo;
    private String telefono;

    public proveedor(String nombre, String correo, String telefono) {
        this.nombre = nombre;
        this.correo = correo;
        this.telefono = telefono;
    }

    public proveedor() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
}
