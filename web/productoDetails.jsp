<%-- 
    Document   : productoDetails
    Created on : 10/01/2022, 11:01:59 PM
    Author     : rodri
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="java.util.HashMap"%>
<%@page import="Models.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
int id=(int)request.getAttribute("id_producto");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Portfolio Details - Squadfree Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Squadfree - v4.7.0
  * Template URL: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent" style="
    background: rgba(106, 64, 55, 1);
">
            <div class="container d-flex align-items-center justify-content-between">

                <div class="logo">
                    <h1 style="font-family: 'MedievalSharp', cursive;font-size: 42px"><a href="index.jsp" ><span >La Antañona</span></a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="index.jsp"><img  src="assets/img/Logo-LA.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav id="navbar" class="navbar">
                    <ul>
                         <li><a class=" scrollto " href="home">Inicio</a></li>
                        <li><a class=" scrollto" href="#about">Acerca de Nosotros</a></li>
                        <li><a class=" scrollto" href="#services">Servicios</a></li>
                        <li><a class=" scrollto active" href="articulos-disponibles">Articulos</a></li>
                        <li><a class="scrollto" href="contacto">Contacto</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="Productos.jsp">Articulos</a></li>
                             <% 
                                  Productos productod=new Productos();
        DefaultTableModel tabl2 = new DefaultTableModel();
        tabl2 = productod.Datos(id);
        for (int t=0;t<tabl2.getRowCount();t++){
          out.println("<li>Detalles "+tabl2.getValueAt(t,1)+"</li>");
        }
       
        %>
          </ol>
        </div>

      </div>
    </section><!-- Breadcrumbs Section -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
               <%
                   Productos Producto=new Productos();
               HashMap<String,String> dropImages = Producto.listaDeImagenes(id);
               if(dropImages.size()>1){
            out.println("<div class='portfolio-details-slider swiper'>");
             out.println("<div class='swiper-wrapper align-items-center'>");
   
                
                         for (String i: dropImages.keySet()){
                             out.println("<div class='swiper-slide'>");
                             out.println("<img src='assets/img/"+dropImages.get(i)+"' style='max-width: 780px;max-height:780px;' alt=''/>");
                          
                             out.println("</div>");
                         }
                         }else{
                      out.println("<div class=''>");
             out.println("<div class=' align-items-center'>");
   
                
                         for (String i: dropImages.keySet()){
                             out.println("<div class=''>");
                             out.println("<img src='assets/img/"+dropImages.get(i)+"' style='max-width: 780px;max-height:780px;'  alt=''/>");
                             
                             out.println("</div>");
                         }
               }
                %>
                
                  
                

             

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
                 <% 
                                  Productos producto=new Productos();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = producto.Datos(id);
        for (int t=0;t<tabla.getRowCount();t++){
          out.println("<h3>"+tabla.getValueAt(t,1)+"</h3>");
          out.println("<ul>");
          out.println("<li><strong>Marca</strong>: "+tabla.getValueAt(t,2)+"</li>");
          out.println("<li><strong>Categoria</strong>: "+tabla.getValueAt(t,6)+"</li>");
          out.println("<li><strong>Entrega Inmediata</strong>: "+tabla.getValueAt(t,4)+"</li>");
          out.println("<li><strong>Cantidad en Stock</strong>: "+tabla.getValueAt(t,3)+"</li>");
           out.println("<br><br>");
           out.println("<li><strong>Descripcion</strong>: "+tabla.getValueAt(t,5)+"</li>");
            out.println("<br><br>");
            out.println("<li style='color:#0d6efd;font-size: 30px;'><strong>Precio: </strong> Q. "+tabla.getValueAt(t,7)+"</li>");
          
         
          
     
        }
       
        %>
              
              
                
                
                
                
                
               
                
        
              </ul>
            </div>
           
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-4 col-md-6">
                            <div class="footer-info">
                                <h3>La Antañona</h3>
                                <p class="pb-3"><em>Somos una tienda que se dedica a la compra y venta de artículos antiguos, coleccionables, vintage, curiosidades etc....</em></p>
                                <p>
                                    Aldea San Felipe de Jesús<br>
                                    Calle al Hospital Nacional No. 61A. La Antigua Guatemala
                                    <br>Sacatepequez.<br>
                                    <strong>Telefono:</strong>+502 3267-2768 <br>
                                    <strong>Email:</strong> antiguedadeslaantaniona@gmail.com<br>
                                </p>
                                <div class="social-links mt-3">
                                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                    <a style="color:white;"href="https://www.facebook.com/Antiguedadees" class="facebook"><i  class="fab fa-facebook-square"></i></i></a>
                                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                    <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#hero">Inicio</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#about">Acerca de Nosotros</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#services">Servicios</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="articulos-disponibles">Articulos</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="contacto">Contacto</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">FAQs</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Terminos del Servicio</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Politicas de Privacidad</a></li>
                            </ul>
                        </div>

                        

                        <div class="col-lg-4 col-md-6 footer-newsletter">
                            <h4>Nuestro Boletin</h4>
                            <p>Suscribete a nuestro boletin semanal para estar enterado de nuevos
                            articulos y ofertas disponibles y gana cupones de descuento con tus compras</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit" value="Suscribirse">
                            </form>

                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>RD.Enterprises</span></strong>. All Rights Reserved
                </div>
               
            </div>
        </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
