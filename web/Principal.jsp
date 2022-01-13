<%-- 
    Document   : Principal
    Created on : 8/10/2020, 06:34:15 PM
    Author     : rodri
--%>
<%@page import="java.util.HashMap"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession actual = request.getSession(true);
    String Usuario = (String) actual.getAttribute("Logueado");

    session.setMaxInactiveInterval(900);
      if ((actual.getAttribute("Logueado") != null)) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="Contact/css/main.css" />
        <noscript><link rel="stylesheet" href="Contact/css/noscript.css" /></noscript>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="Contact/css/comun.css">
        <script src="https://kit.fontawesome.com/d34e9eb680.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800&display=swap" rel="stylesheet"> 
        
        <title>JSP Page</title>
    </head>
    <body style="background: #1b1f22;">
        <!-- Wrapper -->
        <div id="wrapper" >
            <!-- Header -->
            <header id="header">
                <div class="dropdown">
                    <button id="btn_sesion" type="button"  style="border:none;" data-toggle="dropdown">
                        <%=Usuario%>
                    </button>
                    <div id="dropdown_menu" class="dropdown-menu text-center" style="font-size: 22px;">

                        <span class="dropdown-item">Rodrigo</span>
                        <span class="dropdown-item">Rodrigo@gmail.com</span>
                        <form action="servlet_login" method="post">
                            <h6 class="text-muted"><input type="submit" value="Cerrar Sesion" class="btn btn-dark" id="cerrarsesion" name="cerrarsesion"/></h6>
                        </form>
                    </div>


                </div>
                <div class="logo">
                   <i class="fas fa-house-user fa-3x" style="color: white; margin-top: 20px;"></i>
                </div>
                <div class="content">
                    <div class="inner">
                        <img src="assets/img/La Antañona.png" style="width: 100px;height: 100px;">

                    </div>
                </div>
                <nav>
                    <ul>
                      <li><a href='Marcas.jsp'>Marcas</a></li><br>
                              <li><a href='Productos.jsp'>Productos</a></li><br>
                              <li><a href='clientes.jsp'>Clientes</a></li><br>
                              <li><a href='Compras_Detalle.jsp'>Compras Detalle</a></li><br>
                              <li><a href='Empleados.jsp'>Empleados</a></li><br>
                              <li><a href='Proveedores.jsp'>Proveedores</a></li><br>
                              <li><a href='Puestos.jsp'>Puestos</a></li><br>
                              <li><a href='VentasDetalle.jsp'>Ventas Detalle</a></li><br>
                              <li><a href='NuevoAdmin.jsp'>Nuevo Admin</a></li><br>
                        <!--<li><a href="#elements">Elements</a></li>-->
                    </ul>
                </nav>
            </header>


        </div>

       

    <!-- BG -->
    <script src="Contact/css/js/jquery.min.js"></script>
    <script src="Contact/css/js/browser.min.js"></script>
    <script src="Contact/css/js/breakpoints.min.js"></script>
    <script src="Contact/css/js/util.js"></script>
    <script src="Contact/css/js/main.js"></script>

</body >
</html>
<%    } else {

        response.sendRedirect("/Tienda/admin");

    }
%>
