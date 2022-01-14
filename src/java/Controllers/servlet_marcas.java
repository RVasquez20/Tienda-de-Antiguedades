/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.marcasAdmin;
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
@WebServlet(name = "servlet_marcas", urlPatterns = {"/servlet_marcas"})
public class servlet_marcas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            marcasAdmin marca=new marcasAdmin(Integer.parseInt(request.getParameter("txt_id_Marcas")),request.getParameter("txt_Marca"));
            if("agregar".equals(request.getParameter("btn_agregar"))){
               
               if(marca.agregar()>0){
                    response.sendRedirect("/Tienda/marcas-managment-admin"); 
               }else{
                   out.println("<script>alert('Error');</scrpt>");
               }
           }
          
              if("modificar".equals(request.getParameter("btn_modificar"))){
              
               if(marca.modificar()>0){
                    response.sendRedirect("/Tienda/marcas-managment-admin"); 
               }else{
                   out.println("<script>alert('Error');</scrpt>");
               }
           }
              
                 if("eliminar".equals(request.getParameter("btn_eliminar"))){
              
               if(marca.eliminar()>0){
                    response.sendRedirect("/Tienda/marcas-managment-admin"); 
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
