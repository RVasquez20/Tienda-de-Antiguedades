/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.HashMap;
import java.sql.*;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author rodrigo
 */
public class marcasAdmin {
    private int idMarca;
    private String Marca;
    private Conexion con;
    public marcasAdmin() {
    }

    public marcasAdmin(int idMarca, String Marca) {
        this.idMarca = idMarca;
        this.Marca = Marca;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }
    public HashMap box_marcas(){
        HashMap<String,String> combo=new HashMap();
        try {
            con=new Conexion();
            String query="SELECT id_Marca as id,nombre from marca;";
            con.abrirConexion();
            ResultSet consulta=con.conexionbd.createStatement().executeQuery(query);
            while (consulta.next()) {
                combo.put(consulta.getString("id"),consulta.getString("nombre"));
            }
            con.cerrarConexion();
        } catch (SQLException e) {
             System.out.println("Error->"+e.getMessage());
        }
        return combo;
    }
    public DefaultTableModel ListaDeMarcas(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     con = new Conexion();
     con.abrirConexion();
      String query = "Select id_Marca as ID,nombre from marca";
      ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
      String encabezado[] = {"ID","Marcas"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[2];
      while (consulta.next()){
          datos[0] = consulta.getString("ID");
          datos[1] = consulta.getString("nombre");
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
            String query="INSERT INTO marca(nombre)VALUES(?);";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setString(1, getMarca());
           
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
            String query="UPDATE  marca SET nombre=? WHERE id_Marca=?;";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setString(1, getMarca());
            parametro.setInt(2, getIdMarca());
            
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
            String query="DELETE FROM marca WHERE id_Marca=?;";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            
            parametro.setInt(1,getIdMarca());
            
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
      
    }
}
