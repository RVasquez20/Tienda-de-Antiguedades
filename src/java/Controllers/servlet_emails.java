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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author rodri
 */
public class servlet_emails extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Clientes clienteNuevo;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String email = request.getParameter("email");
            clienteNuevo = new Clientes();
            clienteNuevo.setEmail(email);
            if ("Suscribirse".equals(request.getParameter("Suscribirse"))) {
                if (clienteNuevo.agregarCliente() > 0) {
                    Properties propiedad = new Properties();
                    propiedad.setProperty("mail.smtp.host", "smtp.gmail.com");
                    propiedad.setProperty("mail.smtp.starttls.enable", "true");
                    propiedad.setProperty("mail.smtp.port", "587");
                    propiedad.setProperty("mail.smtp.auth", "true");

                    Session sesion = Session.getDefaultInstance(propiedad);

                    String correoEnvia = "antiguedadeslaantaniona@gmail.com";
                    String contrasena = "mendoza.espacio.tiempo777";
                    String destinatario = email;
                    String asunto = "Suscripcion a La Antañona ";
                    String mensaje = "<div style=\"max-width: 80%; align-content: center; display: block; margin: auto;\">\n" +
"<h3 style=\"color: #003355; margin: 0 0 7px;\">De parte de La Antañona te agradecemos y felicitamos por preferirnos.</h3>\n" +
"<br /><br />\n" +
"<h3 style=\"color: #003355; margin: 0 0 7px;\">El motivo de este mensaje es para informarte sobre los cupones de descuentos obtenidos por ser cliente frecuente</h3>\n" +
"<br /><br />\n" +
"<table style=\"font-family: Arial, Helvetica, sans-serif; border-collapse: collapse; width: 100%; text-align: center; border: 1px solid #003355;\">\n" +
"<thead>\n" +
"<tr>\n" +
"<th style=\"padding-top: 12px; text-align: center; padding-bottom: 12px; border: 1px solid #003355; background-color: #047baa; color: white;\">Articulo</th>\n" +
"<th style=\"padding-top: 12px; text-align: center; padding-bottom: 12px; border: 1px solid #003355; background-color: #047baa; color: white;\">Código</th>\n" +
"<th style=\"padding-top: 12px; text-align: center; padding-bottom: 12px; background-color: #047baa; color: white;\">Descuento</th>\n" +
"</tr>\n" +
"</thead>\n" +
"<tbody>\n" +
"<tr>\n" +
"<td style=\"border: 1px solid #003355; padding: 8px; text-align: center;\" scope=\"row\">Encendedor</td>\n" +
"<td style=\"border: 1px solid #003355; padding: 8px; text-align: center;\">Jo$9tRmxg&amp;9BZO^483!MT9CMvSinl!</td>\n" +
"<td style=\"border: 1px solid #003355; padding: 8px; text-align: center;\">20%</td>\n" +
"</tr>\n" +
"</tbody>\n" +
"</table>\n" +
"<br /><br />\n" +
"<h3 style=\"color: #003355; margin: 0 0 7px;\">Ofertas Validas Hasta el 31 de Diciembre del 2022</h3>\n" +
"<br /><br />\n" +
"<div style=\"width: 100%; margin: 20px 0; display: inline-block; text-align: center;\">Te invitamos a seguir comprando en nuestra página</div>\n" +
"<div style=\"width: 100%; text-align: center;\"><em><a style=\"text-decoration: none; border-radius: 5px; padding: 11px 23px; color: white; background-color: #3498db;\" href=\"https://www.facebook.com/antigua.biznet.9\" target=\"_blank\" rel=\"noopener\">Ir a la página</a> </em></div>\n" +
"<p style=\"color: #b3b3b3; font-size: 12px; text-align: center; margin: 30px 0 0;\"><em>La Antañona 2022</em></p>\n" +
"<div> </div>\n" +
"<div> </div>\n" +
"<div> </div>\n" +
"<div> </div>\n" +
"<div> </div>\n" +
"</div>";

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
                    out.println("\n"
                            + "        <script src=\"assets/js/AllInOne.js\" type=\"text/javascript\"></script>");
                    out.println("<script type=\"text/javascript\">");
                    out.println("$(document).ready(function(){");
                    out.println("ClienteNuevo();");
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
            } else {
                out.println("Error");
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
