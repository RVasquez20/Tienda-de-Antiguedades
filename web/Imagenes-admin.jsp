<%-- 
    Document   : index
    Created on : 18/09/2020, 10:43:41 PM
    Author     : cindy
--%>
<%@page import="Models.marcasAdmin"%>
<%
    HttpSession actual = request.getSession(true);
    String Usuario = (String) actual.getAttribute("Logueado");
    String Nombre = (String) actual.getAttribute("name");
    String Apellido = (String) actual.getAttribute("lastName");
    int accessMarcas = (int) actual.getAttribute("accessMarcas");
    int accessProducts = (int) actual.getAttribute("accessProducts");
    int accessCategories = (int) actual.getAttribute("accessCategories");

    int accessImages = (int) actual.getAttribute("accessImages");
    session.setMaxInactiveInterval(900);
      if ((actual.getAttribute("Logueado") != null)) {
%>
<%@page import="java.util.HashMap"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- <-% 
String variable = (String)request.getAttribute("txt_locale");

%-> -->
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

        <script src="assets/js/AllInOne.js" type="text/javascript"></script>
        <script>
        $(document).ready(function () {
            
              $("#btn_modificar").hide();
       $("#btn_eliminar").hide();
       $("#btn_agregar").show();
        });
    </script>


        <title>Imagenes de Productos</title>
    </head>
    
    <body style="background: #1b1f22;">
        <!-- Wrapper -->
        <div id="wrapper" >
            <!-- Header -->
            <header id="header">
                <div class="dropdown">
                    <button id="btn_sesion" type="button"  style="font-weight: 500;border:none;padding: 1rem;border-radius: 5px;" data-toggle="dropdown">
                        <%=Usuario%>
                    </button>
                    <div id="dropdown_menu" class="dropdown-menu text-center" style="font-size: 22px;">

                           <span class="dropdown-item"><%=Nombre%> <%=Apellido%></span>
                        <form action="sr_login" method="post">
                            <h6 class="text-muted"><input type="submit" value="Cerrar Sesion" class="btn btn-dark" id="cerrarsesion" name="cerrarsesion"/></h6>
                        </form>
                    </div>


                </div>
                <div class="logo">
                  
                   <i class="fas fa-house-user fa-3x" style="color: white; margin-top: 20px;"></i>
                </div>
                <div class="content">
                    <div class="inner">
        
            <br><h1>Imagenes de Productos</h1>
       
         





  <br>

 
         <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Listado de Productos</button>
         <button type="button" name="btn_nuevoc" id="btn_nuevoc" class="btn btn-info btn-lg"  onclick="LimpiarProductos();">Nuevo</button>
         
            <form action="sr_productos" method="POST" class="form-group" enctype="multipart/form-data" class="form-horizontal" role="form" name="formulario">
                  
                <label><b>id</b></label>
                <input type="text" name="txt_id" class="form-control" id="txt_id" placeholder="id" value="0" readonly style="max-width: 250px;"><br>
                <label><b>Producto</b></label>
                <input type="text" name="txt_producto" class="form-control" readonly id="txt_producto" placeholder="Ejemplo:Pan" onkeypress="return text(event);" required><br>
                <label><b>Marca</b></label>
               <input type="text" name="txt_marcas" class="form-control" readonly id="txt_marcas" placeholder="Ejemplo:Pan" onkeypress="return text(event);" required><br>
                
                
                <label><b>Imagen</b></label>
                 <input type="file" id="imagen" name="archivo" class="col-md-8 btn" onchange="cargarArchivo(this)" style="
    color: wheat;">
                 <input type="hidden" id="imagenes" name="imagenes"/>
                                <div class="clear"></div>
                
            <button type="submit" class="btn btn-primary" name="btn_agregar" id="btn_agregar" value="agregar" data-text-loading="Loading..." >Agregar</button>
            <button type="submit" class="btn btn-primary" name="btn_actualizar" id="btn_actualizar" value="modificarguardimagen">Modificar Con misma imagen</button>
            <button type="submit" class="btn btn-primary" name="btn_modificar" id="btn_modificar" value="modificar">Modificar Con distinta imagen</button>
            <button type="submit" class="btn btn-primary" name="btn_eliminar" id="btn_eliminar" value="eliminar" onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false" >Eliminar</button>
       <input type="hidden" name="nombre" id="file">
            </form>
     </div>
                </div>
                <nav>
                    <ul>
                 <%
                            
           out.println("<li><a href='/Tienda/home-admin'>Inicio</a></li><br>");
                            
                            if (accessMarcas == 1) {
                                out.println("<li><a href='/Tienda/marcas-managment-admin'>Marcas</a></li><br>");
                            }
                            if (accessProducts == 1) {
                                out.println("<li><a href='/Tienda/products-managment-admin'> Productos</a></li><br>");
                            }
                            if (accessCategories == 1) {
                                out.println("<li><a href='/Tienda/categories-managment-admin'> Categorias</a></li><br>");
                            }
                             if (accessImages == 1) {
                                out.println("<li><a href='/Tienda/images-managment-admin'> Imagenes</a></li><br>");
                            }
                        %>
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
        <h4 class="modal-title text-center">Lista de Productos </h4>
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
        <th>Producto</th>
        <th>Marca</th>
        <th>Descripcion</th>
        <th>Imagen</th>
        <th>Precio Costo</th>
        <th>Precio Venta</th>
        <th>Existencias</th>
        <th>Fecha De Ingreso</th>
      </tr>
    </thead>
    <tbody id="tbl_productos">

        <%
       /* DefaultTableModel tblTabla=new DefaultTableModel();
        productos producto=new productos();
        tblTabla=producto.Lista();
        for (int i = 0; i < tblTabla.getRowCount(); i++) {
                out.println("<tr data-id_productos="+tblTabla.getValueAt(i, 0)+" data-id_marcas="+tblTabla.getValueAt(i, 9)+" data-idimagen="+ tblTabla.getValueAt(i, 4) +">");
                out.println("<td>"+tblTabla.getValueAt(i, 1)+"</td>");
                out.println("<td>"+tblTabla.getValueAt(i, 2)+"</td>");
                out.println("<td>"+tblTabla.getValueAt(i, 3)+"</td>");
                out.println("<td><img src='upload/"+tblTabla.getValueAt(i, 4)+"' style='width:100px; height:100px; cursor:pointer' value="+tblTabla.getValueAt(i, 4)+" title="+tblTabla.getValueAt(i, 4)+"></td>");
                out.println("<td>"+tblTabla.getValueAt(i, 5)+"</td>");
                out.println("<td>"+tblTabla.getValueAt(i, 6)+"</td>");
                out.println("<td>"+tblTabla.getValueAt(i, 7)+"</td>");
                out.println("<td>"+tblTabla.getValueAt(i, 8)+"</td>");
                out.println("</tr>");
            }*/
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
			
			 <script src="assets/js/jquery.js"></script>
        <script src="Contact/css/js/jquery.min.js"></script>
        <script src="Contact/css/js/browser.min.js"></script>
        <script src="Contact/css/js/breakpoints.min.js"></script>
        <script src="Contact/css/js/util.js"></script>
        <script src="Contact/css/js/main.js"></script>
 <script type="text/javascript">
            $(document).ready(function () {
            $("#lbl_fecha").hide();
                        $("#txt_FechaIngreso").hide();
                        $("#btn_agregar").show();
                        $("#btn_modificar").hide();
                        $("#btn_actualizar").hide();
                        $("#btn_eliminar").hide();
    });
            
            </script>
         <script  type="text/javascript">   
$('#tbl_productos').on('click','tr td', function(evt){
 
   var target,idproducto,idmarcas,descripcion,precio_costo,precio_venta,existencias,producto,fechaingreso,imagen;
   target = $(event.target);
    $("#lbl_fecha").show();
                        $("#txt_FechaIngreso").show();
                        $("#btn_agregar").hide();
                        $("#btn_modificar").show();
                        $("#btn_eliminar").show();
                         $("#btn_actualizar").show();
   idproducto = target.parent().data('id_productos');
  idmarcas = target.parent().data('id_marcas');
   producto=target.parents("tr").find("td").eq(0).html();
   descripcion=target.parents("tr").find("td").eq(2).html();
   precio_venta=target.parents("tr").find("td").eq(5).html();
  precio_costo= target.parents("tr").find("td").eq(4).html();
  existencias= target.parents("tr").find("td").eq(6).html();
   fechaingreso=target.parents("tr").find("td").eq(7).html();
   imagen= target.parents().data('idimagen');
   $("#txt_id").val(idproducto);
    $("#box_marcas").val(idmarcas);
   $("#txt_producto").val(producto);
   $("#txt_descripcion").val(descripcion);
   $("#txt_preciocosto").val(precio_costo);
   $("#txt_precioventa").val(precio_venta);
   $("#txt_exitencias").val(existencias);
   $("#txt_FechaIngreso").val(fechaingreso);
   $("#imagenes").val(imagen);
   
          $('#myModal').modal('hide');

  
  
   

   






   
});
</script>
<script type="text/javascript">
      $('#nuevo').click (function(evt){
    $("#txt_id").val('');
    $("#box_marcas").val('');
   $("#txt_producto").val('');
   $("#txt_descripcion").val('');
   $("#txt_preciocosto").val('');
   $("#txt_precioventa").val('');
   $("#txt_exitencias").val('');
   $("#txt_FechaIngreso").val('');
   $("#txt_Imagen").val('');
   

      });
</script>
 <script>
        $(document).ready(function () {
            
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#tbl_productos tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
        });
    </script>
    </body>
</html>
<%
   }
else{
response.sendRedirect("index.jsp");

}
%>