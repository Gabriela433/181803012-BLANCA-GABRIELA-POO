<%-- 
    Document   : Index
    Created on : 24 may 2020, 13:47:00
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operaciones aritmeticas</title>
    </head>
    <body>
        <p align= "center"> Operaciones aritmeticas</p>
        
        <%
            if (request.getParameter("num1") != null) { %>
        <h1>La suma es: </h1>
        <%
            int suma = 0;
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            suma = num1 + num2;
            out.println(suma);
        %>
        <h1>La resta es: </h1>
        <%
            int resta = 0;
            resta = num1 - num2;
            out.println(resta);
            %>
             <h1>La multiplicación es: </h1>
        <%
            int mult = 0;
            mult = (num1 * num2);
            out.println(mult);
            %>
             <h1>La division es: </h1>
        <%
            int div = 0;
            div = (num1 / num2);
            out.println(div);
            %>

            <form>
                <input type ="submit" value="Regresar"/>
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