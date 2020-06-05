<%-- 
    Document   : Index
    Created on : 20 may 2020, 16:41:40
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitud de numero</title>
    </head>
    <body>
        <h1>Ingresa un número</h1>
               <form method="GET">
                   
            <input type="int" placeholder="Ingresa un numero"  name="num"/><br>
            
             <input type="submit" name="enviar"/>
          
        </form>
        
        <h1> Los numeros ingresados son: </h1>
        <%
            try{
                int n = Integer.parseInt(request.getParameter("num"));
                for (int i=0; i<n; i++){
                    out.println(+i);
            }
            }
            catch(NumberFormatException nfe){
                out.println("");
            }
         %>
       
    </body>
</html>
