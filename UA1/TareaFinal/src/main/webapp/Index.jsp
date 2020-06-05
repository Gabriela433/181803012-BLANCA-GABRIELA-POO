<%-- 
    Document   : Index
    Created on : 22 may 2020, 8:35:41
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numero</title>
    </head>
    <body>
        <h1> El programa que debio ser y no fue (SIN TRY, SIN JAVASCRIPT, SIN PROBLEMAS DE GLASSFISH </h1>
         <%
                if(request.getParameter("numero")!=null){%>
                 <h1> el ciclo del numero ingresado es: </h1>
                  
                 <%
                     int numero=Integer.parseInt(request.getParameter("numero"));
                for (int i=0; i<=numero; i++){
                     out.println(i);
                   }%>
            
            <form>
                <input type= "hidden" name="Numero" />
                <input type ="submit" value="Regresar"/>
            </form>
                   <%}else{%>
                   <form>
                        <input type= "number" name="numero" required />
                        <input type ="submit" value="Enviar"/>
                        <h3>No has ingresado ningún número </h3>
             </form>
 
            <%}
            %>
    </body>
</html>
