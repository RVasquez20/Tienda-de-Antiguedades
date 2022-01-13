<%-- 
    Document   : Login
    Created on : 11/01/2022, 11:56:43 PM
    Author     : rodri
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
       
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="assets/js/AllInOne.js"></script>
<link rel="stylesheet" href="assets/css/EstilosIndex.css" type="text/css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Contact/fuentes/iconic/css/material-design-iconic-font.min.css">

  
<title>JSP Page</title>
    </head>
    <body>

        <div class="container-login">
            <div class="wrap-login">
               
                    <form class="login-form validate-form" id="formLogin" action="servlet_login" method="POST">
                         <span class="login-form-title">LOGIN</span>
                        <div class="wrap-input100">
                            <br>
                            <label class="input110">Usuario</label>
                            <input type="text" id="txt_usuario" name="txt_usuario" class="input100" placeholder="Escriba su usuario" required>
                            <span class="focus-efecto"></span>
                        </div>
                        <div class="wrap-input100">
                            <label class="input110">Contraseña</label>
                            <input type="password" id="txt_pass" name="txt_pass" class="input100" placeholder="Escriba su Contraseña" required>
                            <span class="focus-efecto"></span>
                         
                        </div>
                         <div class="wrap-input100">
                            <label class="input110">Key</label>
                            <input type="password" id="txt_key" name="txt_key" class="input100" placeholder="Escriba su Clave" required>
                            <span class="focus-efecto"></span>
                         
                        </div>
                      
                        <div class="container-login-form-btn">
                            <div class="wrap-login-form-btn">
                                <div class="login-form-bgbtn"></div>
                       
                        <input type="submit" value="Ingresar" class="btn login-form-btn" name="Ingresar" id="Ingresar" >
                        
                        <!--<input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-b">-->
                    </div>
                </div>
                    </form>
       
            </div>
        </div>
        <!-- Fin form-->
          
 
    </body>
</html>
