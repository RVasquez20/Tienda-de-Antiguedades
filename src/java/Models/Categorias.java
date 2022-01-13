/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

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
    HashMap<Integer,String> drop = new HashMap();
    try{
        String query ="select id_Category as id,categoria from categoria";
         con = new Conexion();
         con.abrirConexion();
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            while (consulta.next()){
            drop.put(consulta.getInt("id"),consulta.getString("categoria"));
            }
         con.cerrarConexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;
    }
}
