/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Categorias;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rodri
 */
@WebServlet(name = "servlet_categorias", urlPatterns = {"/servlet_categorias"})
public class servlet_categorias extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Categorias categoria;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servlet_categorias</title>");            
            out.println("</head>");
            out.println("<body>");
            
               
            if("agregar".equals(request.getParameter("btn_agregar"))){
                categoria=new Categorias(Integer.parseInt(request.getParameter("txt_id_categorias")),request.getParameter("txt_categoria"));
               if(categoria.agregar()>0){
                    response.sendRedirect("/Tienda/categories-managment-admin"); 
               }else{
                   out.println("<script>alert('Error');</scrpt>");
               }
           }
          
              if("modificar".equals(request.getParameter("btn_modificar"))){
               categoria=new Categorias(Integer.parseInt(request.getParameter("txt_id_categorias")),request.getParameter("txt_categoria"));
               if(categoria.modificar()>0){
                    response.sendRedirect("/Tienda/categories-managment-admin"); 
               }else{
                   out.println("<script>alert('Error');</scrpt>");
               }
           }
              
                 if("eliminar".equals(request.getParameter("btn_eliminar"))){
               categoria=new Categorias(Integer.parseInt(request.getParameter("txt_id_categorias")),request.getParameter("txt_categoria"));
               if(categoria.eliminar()>0){
                    response.sendRedirect("/Tienda/categories-managment-admin"); 
               }else{
                   out.println("<script>alert('Error');</scrpt>");
               }
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
