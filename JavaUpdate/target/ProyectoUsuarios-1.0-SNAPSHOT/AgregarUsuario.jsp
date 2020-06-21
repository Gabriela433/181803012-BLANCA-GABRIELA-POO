<%-- 
    Document   : AgregarUsuario
    Created on : 14 jun 2020, 11:22:53
    Author     : usuario
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        //Declarar el driver para la conexion a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("INSERT INTO usuarios SET usuario=?, password=MD5(?)");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setString(2, request.getParameter("password"));
        stmt.setInt(3, Integer.parseInt(request.getParameter("Edad")));
        if (stmt.executeUpdate() == 1) {
%>
<div>
    <h3 style="text-align:center; background-color: bisque">
        <font COLOR="teal">Se agrego exitosamente el registro en la base de datos</font>
    </h3>
</div>
<% 
    }
%>

<html  >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar Usuario</title>
    </head>
    <body>
        <form action="Index.jsp" methode="POST" class="form" >
            <div class="form-row">
                
                   <form>
                       <p>   </p>
                   </form>
                
                <div class="col">
                    <input type="submit" class="btn btn-success btn-block" value="Ver Base de datos" />
                </div>
            </div>
        </form>
    </body>
</html>
<%
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>



