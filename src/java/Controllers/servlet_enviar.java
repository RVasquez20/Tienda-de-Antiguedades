/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Clientes;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rodri
 */
public class servlet_enviar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     Clientes cliente;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             String email = request.getParameter("email");
            cliente = new Clientes();
            cliente.setEmail(email);
            String nombre= request.getParameter("name");
            String necesidad=request.getParameter("sr");
            String Mensaje= request.getParameter("message");
            String Codigo= request.getParameter("codigoDeCompra");
            String tel= request.getParameter("tel");
             if ("btn_mensaje".equals(request.getParameter("btn_mensaje"))) {
              
            if(cliente.verificarClienteExiste()>0){
                Properties propiedad = new Properties();
                    propiedad.setProperty("mail.smtp.host", "smtp.gmail.com");
                    propiedad.setProperty("mail.smtp.starttls.enable", "true");
                    propiedad.setProperty("mail.smtp.port", "587");
                    propiedad.setProperty("mail.smtp.auth", "true");

                    Session sesion = Session.getDefaultInstance(propiedad);

                    String correoEnvia = "antiguedadeslaantaniona@gmail.com";
                    String contrasena = "mendoza.espacio.tiempo777";
                    String destinatario = correoEnvia;
                    String asunto = necesidad+"-"+nombre;
                    String mensaje;
                    if(necesidad.equals("Progreso de Pedido Realizado")){
                         mensaje = Mensaje+"\nNombre del cliente: "+nombre+"\nTelefono: "+tel+
                                 "\nCodigo de Compra: "+Codigo+"\nEmail: "+email;
                    }else{
                         mensaje = Mensaje+"\nNombre del cliente: "+nombre+"\nTelefono: "+tel+"\nEmail: "+email;
                    }
                   

                    MimeMessage mail = new MimeMessage(sesion);

                    try {
                        mail.setFrom(new InternetAddress(correoEnvia));
                        mail.addRecipient(Message.RecipientType.TO, new InternetAddress(destinatario));
                        mail.setSubject(asunto);
                        mail.setText(mensaje);

                        Transport transporte = sesion.getTransport("smtp");
                        transporte.connect(correoEnvia, contrasena);
                        transporte.sendMessage(mail, mail.getRecipients(Message.RecipientType.TO));
                        transporte.close();
     out.println("<!DOCTYPE html>");
                    out.println("<html lang='es'>");
                    out.println("<head>");
                    out.println("<title>Suscripcion</title>");
                    out.println("<meta charset='utf-8'>");
                    out.println("<meta name='viewport' content='width=device-width, initial-scale=1'>");
                    out.println("<link rel='stylesheet'href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>");
                    out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
                    out.println("<script src=\"assets/js/AllInOne.js\" type=\"text/javascript\"></script>");
                    out.println("<script type=\"text/javascript\">");
                    out.println("$(document).ready(function(){");
                    out.println("Contacto();");
                    out.println("});");
                    out.println("</script>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("</body></html>");


                   } catch (AddressException ex) {
                        System.out.println("Error->" + ex.getMessage());
                    } catch (MessagingException ex) {
                        System.out.println("Error->" + ex.getMessage());
                    }

              
            } else {
                    if(cliente.agregarCliente()>0){
                       Properties propiedad = new Properties();
                    propiedad.setProperty("mail.smtp.host", "smtp.gmail.com");
                    propiedad.setProperty("mail.smtp.starttls.enable", "true");
                    propiedad.setProperty("mail.smtp.port", "587");
                    propiedad.setProperty("mail.smtp.auth", "true");

                    Session sesion = Session.getDefaultInstance(propiedad);

                    String correoEnvia = "antiguedadeslaantaniona@gmail.com";
                    String contrasena = "mendoza.espacio.tiempo777";
                    String destinatario = correoEnvia;
                    String asunto = necesidad+"-"+nombre;
                    String mensaje;
                    if(necesidad.equals("Progreso de Pedido Realizado")){
                         mensaje = Mensaje+"\nNombre del cliente: "+nombre+"\nTelefono: "+tel+
                                 "\nCodigo de Compra: "+Codigo+"\nEmail: "+email;
                    }else{
                         mensaje = Mensaje+"\nNombre del cliente: "+nombre+"\nTelefono: "+tel+"\nEmail: "+email;
                    }
                   

                    MimeMessage mail = new MimeMessage(sesion);

                    try {
                        mail.setFrom(new InternetAddress(correoEnvia));
                        mail.addRecipient(Message.RecipientType.TO, new InternetAddress(destinatario));
                        mail.setSubject(asunto);
                        mail.setText(mensaje);

                        Transport transporte = sesion.getTransport("smtp");
                        transporte.connect(correoEnvia, contrasena);
                        transporte.sendMessage(mail, mail.getRecipients(Message.RecipientType.TO));
                        transporte.close();
     out.println("<!DOCTYPE html>");
                    out.println("<html lang='es'>");
                    out.println("<head>");
                    out.println("<title>Suscripcion</title>");
                    out.println("<meta charset='utf-8'>");
                    out.println("<meta name='viewport' content='width=device-width, initial-scale=1'>");
                    out.println("<link rel='stylesheet'href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>");
                    out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
                          out.println("<script src=\"assets/js/AllInOne.js\" type=\"text/javascript\"></script>");
                    out.println("<script type=\"text/javascript\">");
                    out.println("$(document).ready(function(){");
                    out.println("Contacto();");
                    out.println("});");
                    out.println("</script>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("</body></html>");


                    } catch (AddressException ex) {
                        System.out.println("Error->" + ex.getMessage());
                    } catch (MessagingException ex) {
                        System.out.println("Error->" + ex.getMessage());
                    }
                    } else {
                    out.println("Error");
                }
                }
                    
                
                
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
