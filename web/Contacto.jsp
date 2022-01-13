<%-- 
    Document   : Contacto
    Created on : 5/01/2022, 10:43:52 PM
    Author     : rodri
--%>

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
        <!-------------------------------------------------->
        <link rel="stylesheet" type="text/css" href="assets/css/util.css">
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Contact/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contact/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contact/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contact/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contact/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contact/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contact/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contact/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        
    </head>
    <body>  <!-- ======= Header ======= -->
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
                        <li><a class=" scrollto active" href="articulos-disponibles">Articulos</a></li>
                        <li><a class="scrollto" href="contacto">Contacto</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->
        <main id="main1">
        <div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form">
				<span class="contact100-form-title">
					Send Us A Message
				</span>


				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<label class="label-input100" for="name">Full name</label>
					<input id="name" class="input100" type="text" name="name" placeholder="Enter your name...">
					<span class="focus-input100"></span>
				</div>


				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<label class="label-input100" for="email">Email Address</label>
					<input id="email" class="input100" type="text" name="email" placeholder="Enter your email...">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100">
					<div class="label-input100">What do you need?</div>
					<div>
						<select class="js-select2" name="service">
							<option>Please chooses</option>
							<option>UI/UX Design</option>
							<option>eCommerce Bussiness</option>
							<option>Online Services</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<label class="label-input100" for="message">Message</label>
					<textarea id="message" class="input100" name="message" placeholder="Type your message here..."></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						Send
					</button>
				</div>

				<div class="contact100-form-social flex-c-m">
					<a href="#" class="contact100-form-social-item flex-c-m bg1 m-r-5">
						<i class="fa fa-facebook-f" aria-hidden="true"></i>
					</a>

					<a href="#" class="contact100-form-social-item flex-c-m bg2 m-r-5">
						<i class="fa fa-twitter" aria-hidden="true"></i>
					</a>

					<a href="#" class="contact100-form-social-item flex-c-m bg3">
						<i class="fa fa-youtube-play" aria-hidden="true"></i>
					</a>
				</div>
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('assets/img/La Antañona.png');background-size: contain;">
			</div>
		</div>
	</div>

        </main>

        <script src="Contact/vendor/jquery/jquery-3.2.1.min.js"></script>
===========================================================================================-->
	<script src="Contact/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Contact/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Contact/vendor/bootstrap/js/popper.js"></script>
	<script src="Contact/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Contact/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
		$(".js-select2").each(function(){
			$(this).on('select2:open', function (e){
				$(this).parent().next().addClass('eff-focus-selection');
			});
		});
		$(".js-select2").each(function(){
			$(this).on('select2:close', function (e){
				$(this).parent().next().removeClass('eff-focus-selection');
			});
		});

	</script>
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
