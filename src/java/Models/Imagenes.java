/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author rodri
 */
public class Imagenes {
    private Conexion con;
    private int id_producto;
    private String imagen;

    public Imagenes(int id_imagen, String imagen) {
        this.id_producto = id_imagen;
        this.imagen = imagen;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
       public int agregarImagenes(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro;
            
            String query="INSERT INTO imagenes(id_Producto,imagenes)VALUES(?,?);";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setInt(1, this.getId_producto());
            parametro.setString(2, this.getImagen());
            
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
      
    }
    
}
