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
public class Clientes {
    private Conexion con;
    private String email;

 
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
     public int agregarCliente(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro;
            
            String query="INSERT INTO cliente(Email)VALUES(?);";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setString(1, this.getEmail());
            
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error al agregar cliente->"+e.getMessage());
              return retorno;
        }
      
    }
}
