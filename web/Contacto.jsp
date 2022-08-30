<%-- 
    Document   : Contacto
    Created on : 5/01/2022, 10:43:52 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
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
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="//code.tidio.co/5n1ombyopset3ewaeefvuancch9zcm4l.js" async></script>
        <!-------------------------------------------------->
      <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="Prueba/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Prueba/css/util.css">
	<link rel="stylesheet" type="text/css" href="Prueba/css/main.css">
<!--===============================================================================================++-->
            <script>

     $(document).ready(function () {
            var seleccion;
           $("select[name=sr]").change(function(){
          seleccion=$('select[name=sr]').val();
          console.log(seleccion);
            if(seleccion==="Progreso de Pedido Realizado"){
                $("#codigo").removeAttr('hidden');
            }else{
                $("#codigo").attr("hidden",true);
                $("#codigoDeCompra").val('');
            }
        });
        });
        </script>
    </head>
    <body > <!-- ======= Header ======= -->
        <header id="header1" class="fixed-top header-transparent" style="
    background: rgba(106, 64, 55, 1);
">
            <div class="container d-flex align-items-center justify-content-between">

                <div class="logo">
                    <h1 style="font-family: 'MedievalSharp', cursive;font-size: 42px;text-transform: uppercase;color:white;">
                        <a href="index.jsp" style="font-family: 'MedievalSharp', cursive;font-size: 42px;text-transform: uppercase;color:white;">
                            <span style="font-family: 'MedievalSharp', cursive;font-size: 42px;text-transform: uppercase;color:white;">La Antañona</span></a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="index.jsp"><img  src="assets/img/Logo-LA.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class=" scrollto " href="home">Inicio</a></li>
                        <li><a class=" scrollto" href="home#about">Acerca de Nosotros</a></li>
                        <li><a class=" scrollto" href="home#services">Servicios</a></li>
                        <li><a class=" scrollto " href="articulos-disponibles">Articulos</a></li>
                        <li><a class="scrollto active" href="contacto">Contacto</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->
        <main id="main1">
        <div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="servlet_enviar" method="POST">
				<span class="contact100-form-title">
					Contactanos
				</span>


				<div class="wrap-input100 validate-input" data-validate="Ingrese su nombre primero">
					<label class="label-input100" for="name">Nombre Completo</label>
					<input id="name" class="input100" type="text" name="name" placeholder="Ingrese su nombre...">
					<span class="focus-input100"></span>
				</div>


				<div class="wrap-input100 validate-input" data-validate = "Ingrese un email valido">
					<label class="label-input100" for="email">Direccion de Correo Electronico</label>
					<input id="email" class="input100" type="text" name="email" placeholder="Ingrese su correo electronico...">
					<span class="focus-input100"></span>
				</div>

                            <div class="wrap-input100 validate-input" data-validate="Ingrese su telefono primero">
					<label class="label-input100" for="name">Telefono</label>
					<input id="tel" class="input100" type="text" name="tel" placeholder="Ingrese su telefono...">
					<span class="focus-input100"></span>
				</div>
                            
                            <div ><br>
					<div >Que necesita?</div>
					<div>
                                            <select class="js-select2" name="sr" id="sr" >
                                                    <option value="0">Porfavor Elija</option>
							<option value="Articulos a Consignacion">Artículos a Consignación</option>
							<option value="Compra de articulos">Compra de artículos</option>
							<option value="Informacion sobre Envios">Informacion sobre Envios</option>
                                                        <option value="Progreso de Pedido Realizado">Progreso de Pedido Realizado</option>
                                                        <option value="Otro...">Otro...</option>
						</select>
                                            
						<div class="dropDownSelect2"></div>
					</div>
					<span class="focus-input100"></span>
				</div>
                               <br><br>
                                
                            <div class="wrap-input100 " id="codigo" name="codigo" hidden>
					<label class="label-input100" >Codigo de Compra</label>
                                        <input id="codigoDeCompra" class="input100" value="x" type="text" name="codigoDeCompra" placeholder="Ingrese su Codigo De Compra...">
					<span class="focus-input100"></span>
				</div>
                               

				<div class="wrap-input100 validate-input" data-validate = "Ingrese su mensaje">
					<label class="label-input100" for="message">Mensaje</label>
					<textarea id="message" class="input100" name="message" placeholder="Escribe tu mensaje aca..."></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					
                                     <button type="submit" class="contact100-form-btn" name="btn_mensaje" id="btn_mensaje" value="btn_mensaje" data-text-loading="Loading..." >Evniar</button>
				</div>

				
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('assets/img/La Antañona.png');background-size: contain;">
			
                        </div>
		</div>
	</div>

        </main>
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
                            <h4 style="text-align: center;">Links</h4>
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
                            <h2>Nuestro Boletin</h2>
                            <p>Suscribete a nuestro boletin semanal para estar enterado de nuevos
                            articulos y ofertas disponibles y gana cupones de descuento con tus compras</p>
                            <form action="servlet_emails" method="post">
                                <input type="email" style="border-radius: 10px;" placeholder="email@email.com" name="email"  >
                                <input style="border-radius: 10px;" type="submit" name="Suscribirse" value="Suscribirse">
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
        
    
        
        <script src="Contact/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===========================================================================================-->
	<script src="Contact/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Contact/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Contact/vendor/bootstrap/js/popper.js"></script>
	<script src="Contact/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Contact/vendor/select2/select2.min.js"></script>
	
<!--===============================================================================================-->
	<script src="Contact/vendor/daterangepicker/moment.min.js"></script>
	<script src="Contact/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Contact/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Contact/js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
    </body>
</html>
