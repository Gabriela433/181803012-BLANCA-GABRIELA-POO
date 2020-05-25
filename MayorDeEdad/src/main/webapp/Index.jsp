<%-- 
    Document   : Index
    Created on : 24 may 2020, 22:00:08
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>¿Eres mayor de edad?</title>
    </head>
    
    <body>
        <h1> ¿Eres mayor de edad? </h1>
        
        <%
            if (request.getParameter("edad") != null) { %>

        <%
            int edad = Integer.parseInt(request.getParameter("edad"));
            
            if (edad>=18){
                out.println("¡FELICIDADES! Ya eres mayor de edad");
                
            }else{
                out.println("Lo sentimos, aún eres muy pequeño");
            }
        %>
        
            <form>
                <p><input type ="submit" value="Regresar"/></p>
            </form>
        
        <%} else { %>
        
        <form>
            <input type="number" placeholder="Ingresa tu edad" name="edad" required />
            
            <input type="submit" value="Averiguar"/>
        </form>
        
        <%}
        %>
    </body>
</html>