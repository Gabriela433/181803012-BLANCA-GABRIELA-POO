<%-- 
    Document   : Index
    Created on : 13 jun 2020, 17:00:38
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
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("Select * from usuarios");
            rs = stmt.executeQuery();
            
            %>
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
                    <title>CRUD</title>
                </head>
                <body>
                    <h1>Los registros en la base de datos son: </h1>
                    <div class="container">
                        <table class="table table-hover">
                            <thead class=" thead-dark">
                                <tr>
                                    <td colspan="2"><h2>Usuarios</h2></td>
                                    <td><a class="btn btn-success btn-block" href="formularioUsuario.jsp"><i class="fas fa-user-plus"></i> Agregar usuario</a></td>
                                    
                                </tr>
                               
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Contraseña</th>
                              </tr>
                              
                            </thead>
                            <tbody>
                                <% while (rs.next()) {%>
                                <tr>
                                    <th scope="row"><%=rs.getInt("id_usuario")%></th>
                                    <td><%=rs.getString("usuario")%></td>
                                    <td><%=rs.getString("password")%></td>
                                    <td><a class="btn btn-warning btn-block" href="formularioUsuario.jsp?id=<%=rs.getInt("id_usuario")%>"> Editar el usuario </a> </td>
                                    <td><a class="btn btn-warning btn-block" href="formularioPassword.jsp?id=<%out.print(rs.getInt("id_usuario"));%>">Editar Password</a></td>
                                    <td><a class="btn btn-danger btn-block" href="a"> Eliminar el usuario </a> </td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </body>
            </html>
            <%
                } catch(Exception e) {
                    out.println("error"+e);
                }%>

