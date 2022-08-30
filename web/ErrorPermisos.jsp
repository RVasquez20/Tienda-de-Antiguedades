<%-- 
    Document   : ErrorP
    Created on : 30/10/2020, 02:38:32 PM
    Author     : rodri
--%>

<%
      HttpSession actual =request.getSession(true);
      
        %>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="assets/js/AllInOne.js" type="text/javascript"></script>
<title>Error Permisos Insuficientes</title>
<script>
            $(document).ready(function(){
                    ErrorPermisos();
               });
            </script>
            <style>
                .swal-button--OK{
              background-color: #FF0000;
              font-size: 18px;
  }
                  .swal-button:not([disabled]):hover{
                    
              background: linear-gradient(270deg, rgba(0,0,0,0.3393732492997199) 0%, rgba(255,0,0,0.6671043417366946) 0%);
  }
  .swal-overlay {
background: linear-gradient(270deg, rgba(0,0,0,0.3393732492997199) 0%, rgba(255,0,0,0.6671043417366946) 0%);
}
  .swal-icon--error__line  {
background-color: #FF0000;
}
.swal-title{
    color: #FF0000;
}
 
.swal-icon--error {
    border-color: #FF0000;
}
                </style>
    </head>
    <body>

        
    </body>
</html>