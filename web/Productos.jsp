<%-- 
    Document   : index
    Created on : 5/01/2022, 10:33:13 PM
    Author     : rodri
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="Models.Productos"%>
<%@page import="java.util.HashMap"%>
<%@page import="Models.Categorias"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>



        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
        <script src="https://kit.fontawesome.com/a336d9cb6c.js" crossorigin="anonymous"></script>
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css2?family=MedievalSharp&display=swap" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <script src="//code.tidio.co/5n1ombyopset3ewaeefvuancch9zcm4l.js" async></script>
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
                        <li><a class=" scrollto" href="home#about">Acerca de Nosotros</a></li>
                        <li><a class=" scrollto" href="home#services">Servicios</a></li>
                        <li><a class=" scrollto active" href="articulos-disponibles">Articulos</a></li>
                        <li><a class="scrollto" href="contacto">Contacto</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

      

        <main id="main">
      <!-- ======= Portfolio Section ======= -->
            <section id="portfolio" class="portfolio">
                <div class="container">

                    <div class="section-title" data-aos="fade-in" data-aos-delay="100">
                        <h2>Articulos</h2>
                        
                    </div>

                    <div class="row" data-aos="fade-in">
                        <div class="col-lg-12 d-flex justify-content-center">
                            <ul id="portfolio-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                  <%
                Categorias categoria=new Categorias();
               HashMap<String,String> dropCategoria = categoria.listadoDeCategoriasConProductos();
                         for (String i: dropCategoria.keySet()){
                             out.println("<li data-filter='."+dropCategoria.get(i)+"'>"+dropCategoria.get(i)+"</li>");
                         }
                %>
                            </ul>
                        </div>
                    </div>
                              <% 
                                  Productos producto=new Productos();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = producto.leer();
            out.println("<div class='row portfolio-container' data-aos='fade-up'>");
        for (int t=0;t<tabla.getRowCount();t++){
            out.println(" <div class='col-md-4' >");
            out.println(" <a href='detalles-producto?accion=ver&id="+tabla.getValueAt(t,0)+"' style='text-decoration:none;text-align: center;'>");
            out.println(" <div class='card portfolio-item "+tabla.getValueAt(t,1)+" ' style='width:400px'>");
            out.println(" <div class='card-header'>");
            out.println(" <h2>"+tabla.getValueAt(t,3)+"</h2>");
            out.println("</div>");
            out.println("<div class='card-img center-block'>");
            out.println("<input type='hidden' name='txt_id_productos' id='txt_id_productos' class='form-control' value=''/>");

            out.println("<img src='assets/img/"+tabla.getValueAt(t,2)+"' name='imagen de prueba' class='img-fluid'"
                    + " style='width: 400px;height:400px;margin:auto;display:block;' alt=''/> ");
            out.println(" </div>");
            out.println("<div class='card-footer'>");
            out.println("<h5>"+tabla.getValueAt(t,4)+"</h5>");
        out.println(" <h4>Q. "+tabla.getValueAt(t,5)+"</h4>");
        out.println(" </div>");
        out.println(" </div>");
        out.println(" </a>");
        out.println(" </div>");
        }
        out.println(" </div>");
 
        %>
      
   
      
        
          
            
              
                
                  
                
                
                  
               
                
                  
      
        

     
           
            
                        
                            
                                
                                  
      
                           
                            
                          
                          
                        
                        
                        


                    

                </div>
            </section><!-- End Portfolio Section -->

      

      

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
                                    <strong>Telefono:</strong> 3267-2768 <br>
                                    <strong>Email:</strong> antiguedadeslaantaniona@gmail.com<br>
                                </p>
                                <div class="social-links mt-3">
                                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                    <a style="color:white;"href="https://www.facebook.com/antigua.biznet.9" class="facebook"><i  class="fab fa-facebook-square"></i></i></a>
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
