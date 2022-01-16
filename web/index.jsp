<%-- 
    Document   : index
    Created on : 5/01/2022, 10:33:13 PM
    Author     : rodri
--%>

<%@page import="Models.Productos"%>
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
        <header id="header" class="fixed-top header-transparent">
            <div class="container d-flex align-items-center justify-content-between">

                <div class="logo">
                    <h1 style="font-family: 'MedievalSharp', cursive;font-size: 42px"><a href="index.jsp" ><span >La Antañona</span></a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="index.jsp"><img  src="assets/img/Logo-LA.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class=" scrollto active" href="#hero">Inicio</a></li>
                        <li><a class=" scrollto" href="#about">Acerca de Nosotros</a></li>
                        <li><a class=" scrollto" href="#services">Servicios</a></li>
                        <li><a class=" scrollto" href="articulos-disponibles">Articulos</a></li>
                        <li><a class="scrollto" href="contacto">Contacto</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" >
            <div class="hero-container" data-aos="fade-up">
                <h1 style="color:#FBD967;text-transform: none;">Antiguedades y Artículos de Colección</h1><br>
                <h2 style="color:#FBD967;text-transform: none; font-size: 24px;">Nos especializamos
                    en la compra y venta de todo tipo de  artículos antiguos y de colección.</h2>
                <a href="#about" class="btn-get-started scrollto"><img src="assets/img/save.svg" style="max-width: 32px; margin-bottom: 7px;"/></a>
            </div>
        </section><!-- End Hero -->

        <main id="main">

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">
                    <div class="section-title" data-aos="fade-in" data-aos-delay="100">
                        <h2>Acerca de Nosotros</h2>
                    </div>
                    <div class="row no-gutters">
                        <div class="content col-xl d-flex align-items-stretch" data-aos="fade-up">
                            <div class="content">

                                <h4 class="about-Us">
                                    Nos caracterizamos por darle relevancia a la historia a travez de
                                    la compra y venta de artículos que, como en su tiempo la definieron
                                    y hacemos remembranza de dicha historia a travez de los objetos que
                                    adquirimos en diferentes lugares y con esto enfatizamos en la época
                                    moderna el origen en tiempo y espacio de dichos objetos. </h4>

                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End About Section -->
              <!-- ======= Counts Section ======= -->
            <section id="counts" class="counts  section-bg">
                <div class="container">

                    <div class="row no-gutters">
<div class="col-md-3">
				</div>
                        <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                            <div class="count-box">
                                <i class="bi bi-emoji-smile"></i>
                                <span data-purecounter-start="0" data-purecounter-end="73" data-purecounter-duration="1" class="purecounter"></span>
                                <p><strong>Clientes Satisfechos</strong></p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
                            <div class="count-box">
                                <i class="bi bi-list"></i>
                                <%
                                Productos productosDisponibles=new Productos();
                                int Cantidad=productosDisponibles.cantidadProductosExistentes();
                                out.println("<span data-purecounter-start='0' data-purecounter-end='"+Cantidad+"' data-purecounter-duration='1' class='purecounter'></span>");
                                %>
                                
                                <p><strong>Articulos Disponibles</strong></p>
                            </div>
                        </div>
<div class="col-md-3">
				</div>
                       

                    </div>

                </div>
            </section><!-- End Counts Section -->


            <!-- ======= Services Section ======= -->
            <section id="services" class="services">
                <div class="container-fluid">

                    <div class="section-title" data-aos="fade-in" data-aos-delay="100">
                        <h2>Servicios</h2>
                        <p>Dentro de los servicios que ofrecemos tenemos disponibles los siguientes:</p>
                    </div>

                    <div class="row">
                        <div class="col d-flex align-items-stretch mb-5 mb-lg-0">
                            <div class="icon-box" data-aos="fade-up">
                                <div class="icon"><i class="fas fa-coins"></i></div>
                                <h4 class="title"><a href="">Artículos a Consignación</a></h4>
                                <p class="description">
                                    Trabajamos con artículos a consignación, lo cual se basa en:<br><br>
                                <li class="lista-desc description">Usted pone en venta su artículo en nuestra empresa.</li><br>
                                <li class="lista-desc description">Si su artículo es vendido por nuestra empresa, nosotros cobramos una comisión de venta.</li><br>
                                <br>
                                Contáctanos para más infornmación. 
                                </p>
                            </div>
                        </div>
                        

                        <div class="col d-flex align-items-stretch mb-5 mb-lg-0">
                            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                                <div class="icon"><i class="fas fa-comments-dollar"></i></div>
                                <h4 class="title"><a href="">Compra de artículos</a></h4><br><br><br>
                                <p class="description">
                                    Si a usted le interesa vender algún artículo a nuestra empresa.
                               <br>   <br><br><br><br><br><br>  Contáctanos para más infornmación. 
                                </p>
                            </div>
                        </div>

                        <div class="col d-flex align-items-stretch mb-5 mb-lg-0">
                            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                                <div class="icon"><i class="fas fa-shipping-fast"></i></div>
                                <h4 class="title"><a href="">Envios Nacionales</a></h4><br><br>
                                <p class="description">
                                    Hacemos envíos a toda la Republica de Guatemala por medio de reconocidas empresas de paquetería.
                                  <br><br><br><br><br> <br><br> Contáctanos para más infornmación.  
                                </p>
                            </div>
                        </div>

                        <div class="col d-flex align-items-stretch mb-5 mb-lg-0">
                            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                                <div class="icon"><i class="fas fa-plane"></i></div>

                                <h4 class="title"><a href="">Envios Internacionales</a></h4><br><br>
                                <p class="description">
                                    Si usted se encuentra fuera del área de la Republica de Guatemala y desea adquirir algún artículo de nuestra empresa.
                               <br><br><br><br> <br><br>Contáctanos para más infornmación.
                                </p>
                            </div>
                        </div>
                        
                        <div class="col d-flex align-items-stretch mb-5 mb-lg-0">
                            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                                <div class="icon"><i class="fas fa-bolt"></i></div>

                                <h4 class="title"><a href="">Envios Inmediatos</a></h4><br><br>
                                <p class="description">
                                    Si usted se encuentra dentro del Municipio de Sacatepequez y desea adquirir algún artículo de nuestra empresa
                                    Realizamos envios Inmediatos para que el artículo lo reciba el mismo dia que lo pide.                                    
                                <br><br><br><br>Contáctanos para más infornmación.
                                </p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Services Section -->

          


         

      


            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact section-bg">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Contact</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="info-box mb-4">
                                <i class="bx bx-map"></i>
                                <h3>Direccion</h3>
                                <p>Aldea San Felipe de Jesús, Calle al Hospital Nacional No. 61A. La Antigua Guatemala, Sacatepequez</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="info-box  mb-4">
                                <i class="bx bx-envelope"></i>
                                <h3>Email</h3>
                                <p>antiguedadeslaantaniona@gmail.com</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="info-box  mb-4">
                                <i class="bx bx-phone-call"></i>
                                <h3>LLamanos</h3>
                                <p>3267-2768</p>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div >
                            <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1930.7419162330973!2d-90.73550544182778!3d14.571484393391026!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85890de75efdb57f%3A0x16f092244bcb849b!2sIMPRENTA%20Eduard%C2%B4s%20Impresos!5e0!3m2!1ses!2sgt!4v1641360878730!5m2!1ses!2sgt"  frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
                        </div>


                    </div>

                </div>
            </section><!-- End Contact Section -->

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

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-4 col-md-6 footer-newsletter">
                            <h4>Our Newsletter</h4>
                            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit" value="Subscribe">
                            </form>

                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>RV.Enterprises</span></strong>. All Rights Reserved
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
