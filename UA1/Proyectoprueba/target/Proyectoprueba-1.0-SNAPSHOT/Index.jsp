<%-- 
    Document   : Index
    Created on : 31 may 2020, 16:13:23
    Author     : usuario
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <head>
        <style>
         table, th, td {
               border: 1px solid black;

               }
        </style>
        <title>Make up</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    
    <body  style="background-color:bisque;">
        <h1 style="font-size:300%;color:mediumvioletred;text-align:center;"> Make up </h1>
 
<%
    Connection conexion = null;
    ResultSet rs = null;
    try{
            String url= "jdbc:mysql://localhost/maquillaje";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            conexion=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement ps;
            ps=conexion.prepareStatement("Select * from productos  ");
            rs=ps.executeQuery();
            }
    
    catch (Exception e) {
        out.println(" Error: " + e);
    }

%>
<div>
    <table style="width:55%" class="container">
        
        <h1 style="color:mediumvioletred;"> Tabla de los productos </h1>
        <tr>
            <th> Id producto </th>
            <th> Nombre</th>
            <th> Piezas</th>
            <th> Precio</th>
            <th> Tamaño</th>
            <th> Color</th>
            <th> Id marca </th>
        </tr>
        <%          while (rs.next()) {
        %>
                    
        <tr>
            <td align="center" ><%= rs.getInt("Id_producto")%></td>
            <td align="center" ><%= rs.getString("Nombre")%></td>
            <td align="center" ><%= rs.getInt("Piezas")%></td>
            <td align="center" ><%= rs.getInt("Precio")%></td>
            <td align="center" ><%= rs.getString("Tamaño")%></td>
            <td align="center" ><%= rs.getString("Color")%></td>
            <td align="center" ><%= rs.getInt("Id_marca")%></td>
          
           
        </tr>
        <%}%>
    </table>
    
</div>
    
    <%
  
    try{
            String url= "jdbc:mysql://localhost/maquillaje";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            conexion=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement ps;
            ps=conexion.prepareStatement("Select * from cat_marca ");
            rs=ps.executeQuery();
            }
    
    catch (Exception e) {
        out.println(" Error: " + e);
    }

%>
    
    <div>
        <table style="width:35%" >
       <h1 style="color:mediumvioletred;">  Tabla catalogo </h1>
          
            <tr>
                <th> Id_marca </th>
                <th> Nombre</th>
        </tr>
        <%
            while (rs.next()) {
        %>

        <tr>
            <td align="center" ><%= rs.getInt("Id_marca")%></td>
            <td align="center" ><%= rs.getString("Nombre")%></td>

        </tr>
        <%}%>
    </table>

    </div>
</body>
</html>
