<%-- 
    Document   : Index
    Created on : 25 may 2020, 9:26:15
    Author     : usuario
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numero</title>
    </head>
    <body>
        <h1> Triangulo rectangulo </h1>
         <%
                if(request.getParameter("n")!=null){%>
                 <h1> El triangulo se ve asi: </h1>
                  
                 <%
                     int n=Integer.parseInt(request.getParameter("n"));
                     int aster = 1;
                for (int ren=1; ren<=n; ren++){ 
                    for (int i=1; i<=aster; i++){
                        
                            out.println("  *  "); 
                     }
                    %>
                    
                    <form>
                        <p>   </p>
                    </form>
                      <%   
                     
                     aster = aster +1;
                     
                   }%>
                   <form>
                       <p>   </p>
                   </form>
       
            <form>
                <input type ="submit" value="Regresar"/>
            </form>
        <%} else { %>
        <form>
            <h1> Ingresa la altura de * que deseas que tenga tu triángulo rectángulo </h1>
            <input type="number" placeholder="Ingresa un numero" name="n" required /> 
            <input type="submit" value="Demostrar"/>
        </form>
        
 
            <%}
            %>
    </body>
</html>
