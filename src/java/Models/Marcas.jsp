<%-- 
    Document   : Marcas
    Created on : 1/10/2020, 04:55:32 PM
    Author     : rodri
--%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.HashMap"%>
<%
    HttpSession actual = request.getSession(true);
    String usuario = (String) actual.getAttribute("Logueado");
    String nombres = (String) actual.getAttribute("nom");
    String email = (String) actual.getAttribute("emai");
    String profile = (String) actual.getAttribute("Ft");
    String Marca = (String) actual.getAttribute("mar");
    String Produ = (String) actual.getAttribute("pr");
    String client = (String) actual.getAttribute("cl");
     String tipo = (String) actual.getAttribute("T");
    String compdet = (String) actual.getAttribute("cd");
    String Empl = (String) actual.getAttribute("em");
    String Prove = (String) actual.getAttribute("pro");
    String Puest = (String) actual.getAttribute("pues");
    String Vendde = (String) actual.getAttribute("vende");
     String nuevo = (String) actual.getAttribute("nu");
    session.setMaxInactiveInterval(900);
      if ((actual.getAttribute("Logueado") != null) && ((tipo.equals("ADMIN")||Marca!=null))) {
%>
<%@page import="Modelo.marcas"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="CSS/comun.css">
        <script src="JS/AllInOne.js" type="text/javascript"></script>
        <script>
        $(document).ready(function () {
            
              $("#btn_modificar").hide();
       $("#btn_eliminar").hide();
       $("#btn_agregar").show();
        });
    </script>
        <title>JSP Page</title>
    </head>
    <body class="is-preload">
        <!-- Wrapper -->
        <div id="wrapper">
            <script src="//code.tidio.co/d8ipvm98jajzeh4xydviesl213g21mia.js" async></script>
            <!-- Header -->
            <header id="header">
                <div class="dropdown">
                    <button id="btn_sesion" type="button" class="btn btn-outline-light" dropdown-toggle="dropdown" style="border:none;" data-toggle="dropdown">
                        <img src="sources/<%=profile%>" style="width: 60px; height: 60px; border-radius: 2em;"/>   
                        <span id="nombre_sesion" class="navbarr-brand"><%=nombres%></span>
                    </button>
                    <div id="dropdown_menu" class="dropdown-menu text-center" style="font-size: 22px;">

                        <span class="dropdown-item"><%=usuario%></span>
                        <span class="dropdown-item"><%=email%></span>
                        <form action="sr_login" method="post">
                            <h6 class="text-muted"><input type="submit" value="Cerrar Sesion" class="btn btn-dark" id="cerrarsesion" name="cerrarsesion"/></h6>
                        </form>
                    </div>


                </div>
                <div class="logo">
                    <span ><img src="CSS/Logos/eme.svg" style="max-width: 60px; max-height: 60px;margin-right:5px; "></span>
                </div>
                <div class="content" id="content">
                    <div class="inner">

                        <h1>Marcas</h1>
                     <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Listado</button>
                     <button type="button" name="btn_nuevoc" id="btn_nuevoc" class="btn btn-info btn-lg" onclick="LimpiarMarcas();">Nuevo</button>
                     
                        <form action="sr_Marcas" method="POST" class="form-group">
                            <label>ID:</label>
                            <input type="text" name="txt_id_Marcas" id="txt_id_Marcas" class="form-control" value="0" readonly="">
                            <label for="lbl_Marca" ><b>Marca</b></label>
                            <input type="text" name="txt_Marca" id="txt_Marca" class="form-control" placeholder="Ejemplo: Pepsi" onkeypress="return text(event);" required>

                            <br>
                            <button name="btn_agregar" id="btn_agregar"  value="agregar" class="btn btn-primary btn-lg" >Agregar</button>
                            <button name="btn_modificar" id="btn_modificar"  value="modificar" class="btn btn-success btn-lg">Modificar</button>
                            <button name="btn_eliminar" id="btn_eliminar"  value="eliminar" class="btn btn-danger btn-lg" onclick="javascript:if (!confirm('¿Desea Eliminar?'))
                                        return false" >Eliminar</button>
                        </form>
                    </div>
                       
                </div>
                <nav>
                    <ul>
                        <%

                           if(Marca!=null){
                                out.println("<li><a href='Marcas.jsp'>Marcas</a></li><br>");
                           }
                           if(Produ!=null){
                                out.println("<li><a href='Productos.jsp'>Productos</a></li><br>");
                           }
                           if(client!=null){
                                out.println("<li><a href='clientes.jsp'>Clientes</a></li><br>");
                           }
                           if(compdet!=null){
                                out.println("<li><a href='Compras_Detalle.jsp'>Compras Detalle</a></li><br>");
                           }
                           if(Empl!=null){
                                out.println("<li><a href='Empleados.jsp'>Empleados</a></li><br>");
                           }
                           if(Prove!=null){
                                out.println("<li><a href='Proveedores.jsp'>Proveedores</a></li><br>");
                           }
                           if(Puest!=null){
                                out.println("<li><a href='Puestos.jsp'>Puestos</a></li><br>");
                           }
                           if(Vendde!=null){
                                out.println("<li><a href='VentasDetalle.jsp'>Ventas Detalle</a></li><br>");
                           }

 if(nuevo!=null){
                                out.println("<li><a href='NuevoAdmin.jsp'>Nuevo Admin</a></li><br>");
 }
                        %>
                        
                        <!--<li><a href="#elements">Elements</a></li>-->
                    </ul>
                </nav>
            </header>
     

                      
        <br>

       

        <br>
 
        <!-- BG -->
  
  	</div>

		
        <div class="modal" id="myModal">
   <div class="modal-dialog modal-xl modal-dialog-scrollable">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header text-center">
        <h4 class="modal-title text-center">Lista de las Marcas </h4>
 <form class="mr-sm-2">
                            <input class="form-control" id="myInput" type="text" placeholder="Buscar">
                            <br><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo"><svg width="1.7em" height="1.7em" viewBox="0 0 16 16" class="bi bi-info-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                <path d="M8.93 6.588l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588z"/>
                                <circle cx="8" cy="4.5" r="1"/>
                                </svg>&ensp;Ayuda</button>
                            <div id="demo" class="collapse">
                                <br><b>Esta busqueda esta basada en cada tipo de columna de la tabla
                                Si desea regresar a la lista completa de empleados solo debe borrar lo
                                    buscado :D.</b>

                            </div>
                        </form>
      </div>

      <!-- Modal body -->
      <div class="modal-body text-center">

         <table class="table table-dark table-hover text-center">
                <thead>
                    <tr>
                        <th>Marca</th>

                    </tr>
                </thead>
                <tbody id="tbl_Marcas" style="color:white;">
                    <%            marcas marca = new marcas();
                        DefaultTableModel tabla = new DefaultTableModel();
                        tabla = marca.ListaDeMarcas();
                        for (int t = 0; t < tabla.getRowCount(); t++) {
                            out.println("<tr data-idm=" + tabla.getValueAt(t, 0) + ">");
                            out.println("<td>" + tabla.getValueAt(t, 1) + "</td>");
                            out.println("</tr>");

                        }

                    %>

                </tbody>
            </table>
  </div>

 

    </div>
  </div>
</div>
                    <!-- BG -->
			<div id="bg"></div>
    
                    
		<!-- Scripts -->
			
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

        <script type="text/javascript">
                                $('#tbl_Marcas').on('click', 'tr td', function (evt) {
                                    var target, id, Marcas;
                                    target = $(event.target);
                                      $("#btn_modificar").show();
       $("#btn_eliminar").show();
       $("#btn_agregar").hide();
                                    id = target.parent().data("idm");
                                    Marcas = target.parent("tr").find("td").eq(0).html();


                                    $("#txt_id_Marcas").val(id);
                                    $("#txt_Marca").val(Marcas);
   $('#myModal').modal('hide');
   
                                });
        </script>
       
        <script>
        $(document).ready(function () {
            
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#tbl_Marcas tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
        });
    </script>

    </body>
</html>
<%    } else {

        response.sendRedirect("Error.jsp");

    }
%>
