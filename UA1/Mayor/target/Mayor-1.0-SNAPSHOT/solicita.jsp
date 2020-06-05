<%--     Document   : solicita
    Created on : 27 may 2020, 8:30:31
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int numero = Integer.parseInt(request.getParameter("numero"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Ingresa los numeros</title>
    </head>
    
    <body>
        <form>
            <h1>Ingresa un total de: <% out.println(numero);%>  numeros </h1>
            <%
                for (int i=0; i<numero; i++) {
            %>
            <p><input type="number" placeholder="Ingresa un numero"   name="<% out.print("valor" + i); %>" required/></p>
            <%  
                }
            %>
            <input type="hidden" placeholder="Ingresa un numero" value="<% out.print(numero); %>" name="numero">
            <input type="submit" value="Envianding dato"/>
        </form>
            <%
                int max = 0;
            %>
           <p align= "left"> Los numeros que ingresaste son: </p>
            <%
                for (int k = 0; k < numero; k++) {
                    if (request.getParameter("valor" + k) != null) {

                        int valor = Integer.parseInt(request.getParameter("valor" + k));
                        out.println(valor);%><br>
                        <%
                                    if (max < valor) {
                                        max = valor;
                                    }
                                }
                            }%>
                        
                        <p align= "left"> El número mayor es: </p>
                        <%
                            out.println(max);
                        %>
    </body>
</html>

