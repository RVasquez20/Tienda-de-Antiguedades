/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author rodri
 */
public class Productos {
     private Conexion con;
     private int id_producto,id_marca,id_categoria,id_existencia;
     private String nombre,descripcion,imagenInicial;
     private double precio;

    public Productos() {
    }

     
    public Productos(int id_producto, int id_marca, int id_categoria, int id_existencia, String nombre, String descripcion, String imagenInicial, double precio) {
        this.id_producto = id_producto;
        this.id_marca = id_marca;
        this.id_categoria = id_categoria;
        this.id_existencia = id_existencia;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagenInicial = imagenInicial;
        this.precio = precio;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public int getId_existencia() {
        return id_existencia;
    }

    public void setId_existencia(int id_existencia) {
        this.id_existencia = id_existencia;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagenInicial() {
        return imagenInicial;
    }

    public void setImagenInicial(String imagenInicial) {
        this.imagenInicial = imagenInicial;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

public DefaultTableModel leer(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     con = new Conexion();
     con.abrirConexion();
      String query = "select p.id_Producto as id,c.categoria as categoria,p.imagen_Inicial as url from"
              + " productos p inner join categoria c on p.id_Categoria=c.id_Category";
      ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
      String encabezado[] = {"id","categoria","url"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[3];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("categoria");
          datos[2] = consulta.getString("url");
          tabla.addRow(datos);
      
      }
      
     con.cerrarConexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }

 public HashMap listaDeImagenes(int id){
    HashMap<String,String> drop = new HashMap();
    try{
        String query ="select id_Imagenes as id,imagenes from imagenes where id_Producto="+id;
        String imagenInicial="select imagen_Inicial as imagen from productos where id_Producto="+id;
         con = new Conexion();
         con.abrirConexion();
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            ResultSet consulta2 = con.conexionbd.createStatement().executeQuery(imagenInicial);
            while (consulta2.next()){
            drop.put(consulta2.getString("imagen"),consulta2.getString("imagen"));
            }
            while (consulta.next()){
            drop.put(consulta.getString("id"),consulta.getString("imagenes"));
            }
         con.cerrarConexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;
    }
 
 
 public DefaultTableModel Datos(int id){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     con = new Conexion();
     con.abrirConexion();
      String query = "select p.id_Producto as id,p.nombre as Producto,m.nombre as Marca,q.existencia as existe,q.cantidadInStock as stock,q.entregaInmediata as inmediato,\n" +
"p.descripcion as descripcion,c.categoria as categoria,p.precio as precio " +
" from productos p inner join categoria c inner join marca m inner join existencias q on p.id_Categoria=c.id_Category " +
" and m.id_Marca=p.id_Marca and p.id_Existencia=q.id_Existencia where p.id_Producto="+id;
      ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
      String encabezado[] = {"id","Producto","Marca","existe","cantidadInStock","inmediato","Descripcion","Categoria","Precio"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[9];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("Producto");
          datos[2] = consulta.getString("Marca");
          datos[3] = consulta.getString("existe");
          datos[4] = consulta.getString("stock");
          datos[5] = consulta.getString("inmediato");
          datos[6] = consulta.getString("descripcion");
          datos[7] = consulta.getString("categoria");
          datos[8] = consulta.getString("precio");
          tabla.addRow(datos);
      
      }
      
     con.cerrarConexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }
}
