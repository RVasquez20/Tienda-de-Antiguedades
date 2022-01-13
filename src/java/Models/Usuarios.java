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
import java.util.Random;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author rodri
 */
public class Usuarios {
    private int idUsuario;
    private String Usuario,Pass,Nombres,Apellidos,key;
    private Conexion con;

    public Usuarios() {
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

  
  
    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }
    
    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }
    
    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }
   
    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }
    

       public int ValidarUserPassword(String usuario,String pass,String key ){
        int retorno = 0;
        
        try {
            con = new Conexion();
            con.abrirConexion();
            PreparedStatement parametro;
            String Query = "select * from usuarios where Usuario='"+usuario+"' and Password=aes_encrypt('"+pass+"','"+key+"')";
            parametro = con.conexionbd.prepareStatement(Query);
            ResultSet rs = parametro.executeQuery();
            if (rs.next()) {
                
                    retorno=1;
               
            }
            else {
                    return retorno=0;
                }
            con.cerrarConexion();
        }
        catch (Exception ex) {
            retorno = 0;
        }
        return retorno;
    }
 
        
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
   
}
                

