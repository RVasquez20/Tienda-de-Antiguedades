/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author rodri
 */
public class Categorias {
    private Conexion con;
    private int id_categoria;
    private String categoria;

    public Categorias() {
    }

    public Categorias(int id_categoria, String categoria) {
        this.id_categoria = id_categoria;
        this.categoria = categoria;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public HashMap listaDeCategorias(){
    HashMap<String,String> drop = new HashMap();
    try{
        String query ="select id_Category as id,categoria from categoria";
         con = new Conexion();
         con.abrirConexion();
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            while (consulta.next()){
            drop.put(consulta.getString("id"),consulta.getString("categoria"));
            }
         con.cerrarConexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;
    }
        public HashMap listadoDeCategoriasConProductos(){
 HashMap<String,String> drop = new HashMap();
    try{
        String query =" select c.id_Category as id,c.categoria as categoria from categoria c inner join productos p on p.id_Categoria=c.id_Category group by id,categoria order by id";
         con = new Conexion();
         con.abrirConexion();
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            while (consulta.next()){
            drop.put(consulta.getString("id"),consulta.getString("categoria"));
            }
         con.cerrarConexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;
 }
    
    public DefaultTableModel listadoDeCategorias(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     con = new Conexion();
     con.abrirConexion();
      String query = "select id_Category as ID,categoria from categoria";
      ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
      String encabezado[] = {"ID","categoria"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[2];
      while (consulta.next()){
          datos[0] = consulta.getString("ID");
          datos[1] = consulta.getString("categoria");
          tabla.addRow(datos);
      
      }
      
     con.cerrarConexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }
    
    
    public int agregar(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro;
            String query="INSERT INTO categoria(categoria)VALUES(?);";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setString(1, this.getCategoria());
           
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
      
    }
        public int modificar(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro;
            String query="UPDATE categoria SET categoria =? WHERE id_Category = ?;";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setString(1,this.getCategoria());
            parametro.setInt(2, this.getId_categoria());
            
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
      
    }
             public int eliminar(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro;
            String query="DELETE FROM categoria WHERE id_Category = ?;";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            
            parametro.setInt(1,this.getId_categoria());
            
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
      
    }
    
    
}
