/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases_Principales;

/**
 *
 * @author Lenovo
 */
public class inventario {
    
    private String nombre;
    private String precio;
    private String cantidad;
    private String produncion;
    private String vencimiento;
    private String des;
    private String pro;
    private String marca;
    private String categoria;

    public inventario() {
    }

    public inventario(String nombre, String precio, String cantidad, String produncion, String vencimiento, String des, String pro, String marca, String categoria) {
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
        this.produncion = produncion;
        this.vencimiento = vencimiento;
        this.des = des;
        this.pro = pro;
        this.marca = marca;
        this.categoria = categoria;
    }
    
    

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @return the precio
     */
    public String getPrecio() {
        return precio;
    }

    /**
     * @return the cantidad
     */
    public String getCantidad() {
        return cantidad;
    }

    /**
     * @return the produncion
     */
    public String getProduncion() {
        return produncion;
    }

    /**
     * @return the vencimiento
     */
    public String getVencimiento() {
        return vencimiento;
    }

    /**
     * @return the des
     */
    public String getDes() {
        return des;
    }

    /**
     * @return the pro
     */
    public String getPro() {
        return pro;
    }

    /**
     * @return the marca
     */
    public String getMarca() {
        return marca;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(String precio) {
        this.precio = precio;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @param produncion the produncion to set
     */
    public void setProduncion(String produncion) {
        this.produncion = produncion;
    }

    /**
     * @param vencimiento the vencimiento to set
     */
    public void setVencimiento(String vencimiento) {
        this.vencimiento = vencimiento;
    }

    /**
     * @param des the des to set
     */
    public void setDes(String des) {
        this.des = des;
    }

    /**
     * @param pro the pro to set
     */
    public void setPro(String pro) {
        this.pro = pro;
    }

    /**
     * @param marca the marca to set
     */
    public void setMarca(String marca) {
        this.marca = marca;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    
}
