/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases_Principales;

/**
 *
 * @author Lenovo
 */
public class facturas {
    private String nombre;
    private String apellido;
    private String producto;
    private String cantidad;
    private String fecha;
    private String pago;

    public facturas() {
    }

    public facturas(String nombre, String apellido, String producto, String cantidad, String fecha, String pago) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.producto = producto;
        this.cantidad = cantidad;
        this.fecha = fecha;
        this.pago = pago;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getPago() {
        return pago;
    }

    public void setPago(String pago) {
        this.pago = pago;
    }
    
    
    
    
}
