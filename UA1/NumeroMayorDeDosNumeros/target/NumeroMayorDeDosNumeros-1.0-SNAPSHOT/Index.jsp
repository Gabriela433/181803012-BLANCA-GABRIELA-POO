<%-- 
    Document   : Index
    Created on : 24 may 2020, 20:39:35
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Número mayor</title>
    </head>
    
    <body>
        <h1> Número mayor  </h1>
        
        <%
            if (request.getParameter("num1") != null) { %>
        
         <p align= "left"> El número mayor es: </p>
         
        <%
            
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            if (num1>num2){
                out.println(num1);
            }else{
                out.println(num2);
            }
            
        %>
            <form>
                <p><input type ="submit" value="Regresar"/></p>
            </form>
        
        <%} else { %>
        
        <form>
            <input type="number" placeholder="Ingresa un numero" name="num1" required />
            <input type="number" placeholder="Ingresa un numero" name="num2" required /> 
            <input type="submit" value="Calcular"/>
        </form>
        
        <%}
        %>
    </body>
</html>