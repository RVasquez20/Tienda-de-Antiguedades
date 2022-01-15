/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Productos;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author rodri
 */
@MultipartConfig
@WebServlet(name = "servlet_productos", urlPatterns = {"/servlet_productos"})
public class servlet_productos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Productos producto;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Productos</title>");
            out.println("</head>");
            out.println("<body>");
            String nombre = request.getParameter("nombre");
            producto = new Productos(Integer.parseInt(request.getParameter("txt_id")),
                    Integer.parseInt(request.getParameter("box_marcas")), Integer.parseInt(request.getParameter("box_Categoria")),
                    request.getParameter("txt_producto"), request.getParameter("txt_descripcion"),
                    nombre, Double.parseDouble(request.getParameter("txt_precio")));
            producto.setCantidadInStock(Integer.parseInt(request.getParameter("txt_exitencias")));
            int inmediato = Integer.parseInt(request.getParameter("drop_Entrega"));
            switch (inmediato) {
                case 1: {
                    producto.setInmediato("SI");
                    break;
                }
                case 2: {
                    producto.setInmediato("NO");
                    break;
                }
                default: {
                    producto.setInmediato("NO");
                    break;
                }
            }

            if ("agregar".equals(request.getParameter("btn_agregar"))) {
                if (producto.agregarProducto() > 0) {
                    Part archivo = request.getPart("archivo");
                    InputStream is = archivo.getInputStream();
                    File f = new File("C:/Users/rodri/Documents/GitHub/Tienda de antiguedades/Tienda/web/assets/img/" + nombre);
                    FileOutputStream ous = new FileOutputStream(f);

                    int dato = is.read();
                    while (dato != -1) {
                        ous.write(dato);
                        dato = is.read();
                    }
                    ous.close();
                    is.close();
                    response.sendRedirect("/Tienda/products-managment-admin");
                } else {
                    out.println("<script>alert('Error');</scrpt>");
                }

            } else if ("modificar".equals(request.getParameter("btn_modificar"))) {
                /*out.println("<h2>imagenes:"+request.getParameter("imagenes")+"</h2>");
            out.println("<h2>nombreimagen:"+nombre+"</h2>");
            out.println("<h2>idproducto:"+Integer.parseInt(request.getParameter("txt_id"))+"</h2>");
            out.println("<h2>idmarca:"+Integer.parseInt(request.getParameter("box_marcas"))+"</h2>");
            out.println("<h2>idcategoria:"+Integer.parseInt(request.getParameter("box_Categoria"))+"</h2>");
            out.println("<h2>idexistencias:"+request.getParameter("txt_idExistencias")+"</h2>");
            out.println("<h2>nombreproducto:"+request.getParameter("txt_producto")+"</h2>");
            out.println("<h2>desc:"+request.getParameter("txt_descripcion")+"</h2>");
            out.println("<h2>precio:"+Double.parseDouble(request.getParameter("txt_precio"))+"</h2>");
            out.println("<h2>cantidadinstock:"+Integer.parseInt(request.getParameter("txt_exitencias"))+"</h2>");
            out.println("<h2>disponibilidadinmediata:"+Integer.parseInt(request.getParameter("drop_Entrega"))+"</h2>");
            */
            
                 producto = new Productos(Integer.parseInt(request.getParameter("txt_id")),
                    Integer.parseInt(request.getParameter("box_marcas")), Integer.parseInt(request.getParameter("box_Categoria")),
                    Integer.parseInt(request.getParameter("txt_idExistencias")),request.getParameter("txt_producto"), request.getParameter("txt_descripcion"),
                    nombre, Double.parseDouble(request.getParameter("txt_precio")));
            producto.setCantidadInStock(Integer.parseInt(request.getParameter("txt_exitencias")));
            int inmediato2 = Integer.parseInt(request.getParameter("drop_Entrega"));
            switch (inmediato2) {
                case 1: {
                    producto.setInmediato("SI");
                    break;
                }
                case 2: {
                    producto.setInmediato("NO");
                    break;
                }
                default: {
                    producto.setInmediato("NO");
                    break;
                }
            }
                if (producto.modificar() > 0) {
                    Part archivo = request.getPart("archivo");
                    InputStream is = archivo.getInputStream();
                    File f = new File("C:/Users/rodri/Documents/GitHub/Tienda de antiguedades/Tienda/web/assets/img/" + nombre);
                    FileOutputStream ous = new FileOutputStream(f);

                    int dato = is.read();
                    while (dato != -1) {
                        ous.write(dato);
                        dato = is.read();
                    }
                    ous.close();
                    is.close();
                    response.sendRedirect("/Tienda/products-managment-admin");

                } else {
                    out.println("<script>alert('Error');</scrpt>");
                }
            } else if ("modificarguardimagen".equals(request.getParameter("btn_actualizar"))) {
                producto = new Productos(Integer.parseInt(request.getParameter("txt_id")),
                    Integer.parseInt(request.getParameter("box_marcas")), Integer.parseInt(request.getParameter("box_Categoria")),
                    Integer.parseInt(request.getParameter("txt_idExistencias")),request.getParameter("txt_producto"), request.getParameter("txt_descripcion"),
                    request.getParameter("imagenes"), Double.parseDouble(request.getParameter("txt_precio")));
            producto.setCantidadInStock(Integer.parseInt(request.getParameter("txt_exitencias")));
            int inmediato3 = Integer.parseInt(request.getParameter("drop_Entrega"));
            switch (inmediato3) {
                case 1: {
                    producto.setInmediato("SI");
                    break;
                }
                case 2: {
                    producto.setInmediato("NO");
                    break;
                }
                default: {
                    producto.setInmediato("NO");
                    break;
                }
            }
                if (producto.modificar() > 0) {
                    response.sendRedirect("/Tienda/products-managment-admin");
                } else {
                    out.println("<script>alert('Error');</scrpt>");
                }
                /*out.println("<h2>imagenes:"+request.getParameter("imagenes")+"</h2>");
            out.println("<h2>nombreimagen:"+request.getParameter("nombre")+"</h2>");
            out.println("<h2>idproducto:"+Integer.parseInt(request.getParameter("txt_id"))+"</h2>");
            out.println("<h2>idmarca:"+Integer.parseInt(request.getParameter("box_marcas"))+"</h2>");
            out.println("<h2>idcategoria:"+Integer.parseInt(request.getParameter("box_Categoria"))+"</h2>");
            out.println("<h2>idexistencias:"+request.getParameter("txt_idExistencias")+"</h2>");
            out.println("<h2>nombreproducto:"+request.getParameter("txt_producto")+"</h2>");
            out.println("<h2>desc:"+request.getParameter("txt_descripcion")+"</h2>");
            out.println("<h2>precio:"+Double.parseDouble(request.getParameter("txt_precio"))+"</h2>");
            out.println("<h2>cantidadinstock:"+Integer.parseInt(request.getParameter("txt_exitencias"))+"</h2>");
            out.println("<h2>disponibilidadinmediata:"+Integer.parseInt(request.getParameter("drop_Entrega"))+"</h2>");
            */
            
            } else if ("eliminar".equals(request.getParameter("btn_eliminar"))) {

                if (producto.eliminar() > 0) {
                    response.sendRedirect("/Tienda/products-managment-admin");
                } else {
                    out.println("<script>alert('Error');</scrpt>");
                }
            } else {
                out.println("<script>alert('Error');</script>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
