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
public class Productos {

    private Conexion con;
    private int id_producto, id_marca, id_categoria, id_existencia,cantidadInStock;
    private String nombre, descripcion, imagenInicial,inmediato;
    private double precio;

    public Productos() {
    }

    public Productos(int id_producto, int id_marca, int id_categoria, String nombre, String descripcion, String imagenInicial, double precio) {
        this.id_producto = id_producto;
        this.id_marca = id_marca;
        this.id_categoria = id_categoria;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagenInicial = imagenInicial;
        this.precio = precio;
    }
    
public Productos(int id_producto, int id_marca, int id_categoria,int id_existencia, String nombre, String descripcion, String imagenInicial, double precio) {
        this.id_producto = id_producto;
        this.id_marca = id_marca;
        this.id_categoria = id_categoria;
        this.id_existencia=id_existencia;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagenInicial = imagenInicial;
        this.precio = precio;
    }
    
    public int getCantidadInStock() {
        return cantidadInStock;
    }

    public void setCantidadInStock(int cantidadInStock) {
        this.cantidadInStock = cantidadInStock;
    }

    public String getInmediato() {
        return inmediato;
    }

    public void setInmediato(String inmediato) {
        this.inmediato = inmediato;
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

    /*ProductosDetalle*/
    public DefaultTableModel leer() {
        DefaultTableModel tabla = new DefaultTableModel();
        try {
            con = new Conexion();
            con.abrirConexion();
            String query = "select p.id_Producto as id,c.categoria as categoria,p.imagen_Inicial as url,p.nombre as nombre ,\n" +
"p.descripcion as descripcion,p.precio as precio from \n" +
"productos p inner join categoria c inner join existencias q \n" +
"on p.id_Categoria=c.id_Category \n" +
"and p.id_Existencia=q.id_Existencia \n" +
"and q.cantidadInStock>0";
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            String encabezado[] = {"id", "categoria", "url","nombre","descripcion","precio"};
            tabla.setColumnIdentifiers(encabezado);
            String datos[] = new String[6];
            while (consulta.next()) {
                datos[0] = consulta.getString("id");
                datos[1] = consulta.getString("categoria");
                datos[2] = consulta.getString("url");
                datos[3] = consulta.getString("nombre");
                datos[4] = consulta.getString("descripcion");
                datos[5] = consulta.getString("precio");
                tabla.addRow(datos);

            }

            con.cerrarConexion();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return tabla;
    }

    /*Galeria*/
    public HashMap listaDeImagenes(int id) {
        HashMap<String, String> drop = new HashMap();
        try {
            String query = "select id_Imagenes as id,imagenes from imagenes where id_Producto=" + id;
            String imagenInicial = "select imagen_Inicial as imagen from productos where id_Producto=" + id;
            con = new Conexion();
            con.abrirConexion();
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            ResultSet consulta2 = con.conexionbd.createStatement().executeQuery(imagenInicial);
            while (consulta2.next()) {
                drop.put(consulta2.getString("imagen"), consulta2.getString("imagen"));
            }
            while (consulta.next()) {
                drop.put(consulta.getString("id"), consulta.getString("imagenes"));
            }
            con.cerrarConexion();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return drop;
    }

    /*Descripcion*/
    public DefaultTableModel Datos(int id) {
        DefaultTableModel tabla = new DefaultTableModel();
        try {
            con = new Conexion();
            con.abrirConexion();
            String query = "select p.id_Producto as id,p.nombre as Producto,m.nombre as Marca,q.cantidadInStock as stock,q.entregaInmediata as inmediato,\n"
                    + "p.descripcion as descripcion,c.categoria as categoria,p.precio as precio "
                    + " from productos p inner join categoria c inner join marca m inner join existencias q on p.id_Categoria=c.id_Category "
                    + " and m.id_Marca=p.id_Marca and p.id_Existencia=q.id_Existencia where p.id_Producto=" + id;
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            String encabezado[] = {"id", "Producto", "Marca", "cantidadInStock", "inmediato", "Descripcion", "Categoria", "Precio"};
            tabla.setColumnIdentifiers(encabezado);
            String datos[] = new String[8];
            while (consulta.next()) {
                datos[0] = consulta.getString("id");
                datos[1] = consulta.getString("Producto");
                datos[2] = consulta.getString("Marca");
                datos[3] = consulta.getString("stock");
                datos[4] = consulta.getString("inmediato");
                datos[5] = consulta.getString("descripcion");
                datos[6] = consulta.getString("categoria");
                datos[7] = consulta.getString("precio");
                tabla.addRow(datos);

            }

            con.cerrarConexion();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return tabla;
    }

    /*Funcion para seleccionar y rellenar automaticamente los campos de los forms*/
    public DefaultTableModel listOfProducts() {
        DefaultTableModel tabla = new DefaultTableModel();
        try {
            con = new Conexion();
            con.abrirConexion();
            String query = "SELECT p.id_Producto as id,p.nombre as nombre,m.id_Marca as id_marca,m.nombre as marca,p.descripcion as descripcion,"
                    + "p.id_Categoria as id_categoria,c.categoria as categoria,p.imagen_Inicial as imagen,p.precio as precio,e.id_Existencia as id_Existencia,"
                    + "e.cantidadInStock as Cantidad,e.EntregaInmediata as Inmediato FROM "
                    + "productos as p inner join marca as m inner join categoria c inner join existencias as e "
                    + "on p.id_Marca=m.id_Marca and p.id_Categoria=c.id_Category and p.id_Existencia=e.id_Existencia order by id;";
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            String encabezado[] = {"id", "nombre", "id_marca", "marca", "descripcion",
                "id_categoria", "categoria", "imagen", "precio", "id_Existencia", "Cantidad", "Inmediato"};
            tabla.setColumnIdentifiers(encabezado);
            String datos[] = new String[12];
            while (consulta.next()) {
                datos[0] = consulta.getString("id");
                datos[1] = consulta.getString("nombre");
                datos[2] = consulta.getString("id_marca");
                datos[3] = consulta.getString("marca");
                datos[4] = consulta.getString("descripcion");
                datos[5] = consulta.getString("id_categoria");
                datos[6] = consulta.getString("categoria");
                datos[7] = consulta.getString("imagen");
                datos[8] = consulta.getString("precio");
                datos[9] = consulta.getString("id_Existencia");
                datos[10] = consulta.getString("Cantidad");
                datos[11] = consulta.getString("Inmediato");
                tabla.addRow(datos);
            }

            con.cerrarConexion();
            return tabla;
        } catch (SQLException e) {
            System.out.println("Error->" + e.getMessage());
            return tabla;
        }

    }
/*Ultimo id de Existencias*/
    public int lastId() throws SQLException {
        int retorno = 0;
        int exi = 0;

        try {
            con = new Conexion();

            String query = "SELECT max(id_Existencia) as id FROM existencias;";
            con.abrirConexion();

            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            while (consulta.next()) {
                exi = consulta.getInt("id");

            }

            con.cerrarConexion();
            return exi;
        } catch (SQLException e) {
            System.out.println("Error->" + e.getMessage());
            return retorno;
        }
    }
    
    /*Cantidad de productos*/
    public int cantidadProductosExistentes() throws SQLException {
        int retorno = 0;
        int exi = 0;

        try {
            con = new Conexion();

            String query = "select count(*) as cantidad from\n" +
" productos p inner join categoria c inner join existencias q on p.id_Categoria=c.id_Category \n" +
" and p.id_Existencia=q.id_Existencia \n" +
" and q.cantidadInStock>0;";
            con.abrirConexion();

            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            while (consulta.next()) {
                exi = consulta.getInt("cantidad");

            }

            con.cerrarConexion();
            return exi;
        } catch (SQLException e) {
            System.out.println("Error->" + e.getMessage());
            return retorno;
        }
    }
    
    
    /*Agregar un producto con su imagen*/
     public int agregarProducto(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro,parametro2;
            con.abrirConexion();
            String queryExist="INSERT INTO existencias(cantidadInStock,entregaInmediata)VALUES(?,?);";
             parametro2=con.conexionbd.prepareStatement(queryExist);
            parametro2.setInt(1, this.getCantidadInStock());
            parametro2.setString(2, this.getInmediato());
            
                    retorno=parametro2.executeUpdate();
            con.cerrarConexion(); 
            String query="INSERT INTO productos(nombre,id_Marca,descripcion,id_Categoria,imagen_Inicial,precio,id_Existencia)VALUES" +
"(?,?,?,?,?,?,?);";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setString(1, this.getNombre());
            parametro.setInt(2, this.getId_marca());
            parametro.setString(3,getDescripcion());
            parametro.setInt(4,this.getId_categoria());
            parametro.setString(5,this.getImagenInicial());
            parametro.setDouble(6,this.getPrecio());
            parametro.setInt(7, lastId());
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
      
    }
     /*modificar*/
     public int modificar(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro,parametro2;
            con.abrirConexion();
            String queryExist="UPDATE existencias SET cantidadInStock = ?,entregaInmediata =? WHERE id_Existencia =?;";
             parametro2=con.conexionbd.prepareStatement(queryExist);
            parametro2.setInt(1, this.getCantidadInStock());
            parametro2.setString(2, this.getInmediato());
            parametro2.setInt(3, this.getId_existencia());
                    retorno=parametro2.executeUpdate();
            con.cerrarConexion(); 
            String query="UPDATE productos SET nombre =?,id_Marca = ?,descripcion = ?,id_Categoria = ?,"
                    + "imagen_Inicial =?,precio =?,id_Existencia = ? WHERE id_Producto = ?;";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            parametro.setString(1, this.getNombre());
            parametro.setInt(2, this.getId_marca());
            parametro.setString(3,getDescripcion());
            parametro.setInt(4,this.getId_categoria());
            parametro.setString(5,this.getImagenInicial());
            parametro.setDouble(6,this.getPrecio());
            parametro.setInt(7, this.getId_existencia());
            System.out.println("ids:"+this.getId_existencia());
            parametro.setInt(8,this.getId_producto());
            
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
      
    }
     /*eliminar*/
             public int eliminar(){
        int retorno=0;
        try {
            con=new Conexion();
            PreparedStatement parametro;
            String query="DELETE FROM productos WHERE id_Producto=?;";
            con.abrirConexion();
            parametro=con.conexionbd.prepareStatement(query);
            
            parametro.setInt(1,this.getId_producto());
            
                    retorno=parametro.executeUpdate();
            con.cerrarConexion(); 
            return retorno;
        } catch (SQLException e) {
            System.out.println("Error->"+e.getMessage());
              return retorno;
        }
        
      
    }

    @Override
    public String toString() {
        return "Productos{" + "id_producto=" + id_producto + ", id_marca=" + id_marca + ", id_categoria=" + id_categoria + ", id_existencia=" + id_existencia + ", cantidadInStock=" + cantidadInStock + ", nombre=" + nombre + ", descripcion=" + descripcion + ", imagenInicial=" + imagenInicial + ", inmediato=" + inmediato + ", precio=" + precio + '}';
    }
     
     
     
     
     
     /*Funcion para seleccionar y rellenar automaticamente los campos de los forms*/
    public DefaultTableModel listOfImages() {
        DefaultTableModel tabla = new DefaultTableModel();
        try {
            con = new Conexion();
            con.abrirConexion();
            String query = "SELECT p.id_Producto as id,p.nombre as nombre,m.id_Marca as id_marca,m.nombre as marca,p.descripcion as descripcion,i.id_Imagenes as id_imagen,i.imagenes as imagen FROM " +
"productos as p inner join marca as m inner join imagenes i on p.id_Marca=m.id_Marca and p.id_Producto=i.id_Producto order by id;";
            ResultSet consulta = con.conexionbd.createStatement().executeQuery(query);
            String encabezado[] = {"id", "nombre", "id_marca", "marca", "descripcion","id_imagen","imagen"};
            tabla.setColumnIdentifiers(encabezado);
            String datos[] = new String[7];
            while (consulta.next()) {
                datos[0] = consulta.getString("id");
                datos[1] = consulta.getString("nombre");
                datos[2] = consulta.getString("id_marca");
                datos[3] = consulta.getString("marca");
                datos[4] = consulta.getString("descripcion");
                datos[5] = consulta.getString("id_imagen");
                datos[6] = consulta.getString("imagen");
                
                tabla.addRow(datos);
            }

            con.cerrarConexion();
            return tabla;
        } catch (SQLException e) {
            System.out.println("Error->" + e.getMessage());
            return tabla;
        }

    }
}
