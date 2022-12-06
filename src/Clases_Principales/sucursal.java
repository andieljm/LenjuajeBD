/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases_Principales;

/**
 *
 * @author Lenovo
 */
public class sucursal {

    private String nombre;
    private String dir;
    private String distrito;

    public sucursal() {
    }

    public sucursal(String nombre, String dir, String distrito) {
        this.nombre = nombre;
        this.dir = dir;
        this.distrito = distrito;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }
}
