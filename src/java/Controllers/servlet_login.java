/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rodri
 */
@WebServlet(name = "servlet_login", urlPatterns = {"/servlet_login"})
public class servlet_login extends HttpServlet {

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
            Usuarios users = new Usuarios();           
             String user=request.getParameter("txt_usuario");
             String pass=request.getParameter("txt_pass");
             String key=request.getParameter("txt_key");
 

            if (request.getParameter("Ingresar") != null) {
                if(users.validarUserPassword(user,pass,key) > 0) {
                     String nombre=users.name(user);
                     String apellidos=users.lastName(user);
                     int accessMarcas=0,accessProducts=0,accessCategories=0,accessImages=0;
                    try {
                        accessMarcas=users.accessMarcas(user);
                   
                     accessProducts=users.accessProducts(user);
                     
                     accessCategories=users.accessCategory(user);
                     accessImages=users.accessImages(user);
                      } catch (SQLException ex) {
                        System.out.println("Error-->"+ex.getMessage());
                    }
                    
                    HttpSession actual = request.getSession(true);
                    actual.setAttribute("Logueado", user);
                    actual.setAttribute("name", nombre);
                    actual.setAttribute("lastName", apellidos);
                    actual.setAttribute("accessProducts", accessProducts);
                    actual.setAttribute("accessMarcas", accessMarcas);
                    actual.setAttribute("accessCategories", accessCategories);
                    actual.setAttribute("accessImages", accessImages);
                    
                    response.sendRedirect("/Tienda/home-admin");
                }
                else {
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>USUARIO NO ENCONTRADO</title>");            
                    out.println("</head>");
                    out.println("<body>");
                    
                    out.println("<h1>USUARIO NO ENCONTRADO</h1>");
                    out.println("</body>");
                    out.println("</html>");
                }
            }
            
            else if(request.getParameter("cerrarsesion") != null) {
                request.getSession().removeAttribute("Logueado");
              response.sendRedirect("/Tienda/admin");
            }
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
