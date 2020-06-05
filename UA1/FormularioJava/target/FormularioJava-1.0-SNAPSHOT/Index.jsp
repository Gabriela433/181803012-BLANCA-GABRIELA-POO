<%-- 
    Document   : Index
    Created on : 20 may 2020, 17:51:19
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Mi primer formulario</title>
    </head>
    <body>
        <h1>Mi primer formulario :) </h1>
        <form method="POST">
            <input type="text" name="minombre"/><br>
            <input type="password" name="contra"/><br>
            <input type="date" name="fechanacimiento"/><br>
            <input type="submit" name="enviar"/>
            
        </form>
        
        <h1> Los datos ingresados son: </h1>
        <%
            out.println(request.getParameter("minombre"));
         %>
         
            
    </body>
</html>
