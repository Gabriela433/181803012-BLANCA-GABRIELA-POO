 <%-- 
    Document   : Index
    Created on : 24 may 2020, 19:30:02
    Author     : usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cubo de un numero</title>
    </head>
    <body>
        <h1>Cubo de un numero </h1> 
        <%
            if (request.getParameter("num") != null) { %>
            
        <p align= "left"> El cubo del numero es:</p>
        
        <%
           int cubo=0;
            int num = Integer.parseInt(request.getParameter("num"));
            cubo = (num*num*num);
            out.println(cubo); 
        %>
        
            <form>
                <p><input type ="submit" value="Regresar"/></p>
            </form>
        
        <%} else { %>
        
        <form>
            <input type="number" placeholder="Ingresa un numero" name="num" required />
       
            <input type="submit" value="Calcular"/>
        </form>
        
        <%}
        %>
    </body>
</html>
