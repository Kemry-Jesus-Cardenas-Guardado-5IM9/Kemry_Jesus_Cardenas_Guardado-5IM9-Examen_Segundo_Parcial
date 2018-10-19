
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/main.css" />
        <title>Todos</title>
        <script>
            function consultar(){}
        </script>
    </head>
    <body>
        <div id="wrapper">

				<!-- Banner -->
					<section id="intro" class="main">
                                            <article>
        <header>
        <h1 align="center">Users</h1>
        </header>
        
        <%@page import="java.sql.*,java.io.*" %>
        <%  
            out.println("<br>");
            Connection conexion=null;
            Statement sentencia=null;
            ResultSet resultado=null;
            String url="jdbc:mysql://localhost/exa";
            String userName="root";
            String password="n0m3l0";
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conexion=DriverManager.getConnection(url, userName, password);
                sentencia=conexion.createStatement();    
                System.out.println("conecta");
            }
            catch(SQLException error)
            {
                out.println(error.toString());
                System.out.println("no conecta");
            }
            try
            { 
                resultado = sentencia.executeQuery("select * from usuario");
                out.println("<section>");
                out.println("<article>");
                out.println("<table border=0.5 align='center' class='dat'>");
                out.println("<tr class='datou'><th class='daa'>id</th>");
                out.println("<th class='daa'>Usuario</th>");
                out.println("<th class='daa'>Correo</th>");
                out.println("<th class='daa'>Contraseña</th>");
                out.println("<th class='daa'>Nombre</th>");
                out.println("<th class='daa'>Apellido Pat</th>");
                out.println("<th class='daa'>Apellido Mat</th>");
                out.println("<th class='daa'>Tel</th>");
                out.println("<th class='daa'>Escuela</th>");
                out.println("<th class='daa'>Materia</th>");
                out.println("<th class='daa'>Deporte</th>");
                while(resultado.next()){
                    int idd= resultado.getInt("idusuario");
                    String unsu= resultado.getString("usuario");
                    String contrasnia= resultado.getString("contraseña");
                    String correorr= resultado.getString("correo");
                    String noum= resultado.getString("namer");
                    String pe= resultado.getString("P");
                    String eme= resultado.getString("M");
                    String telef= resultado.getString("tel");
                    String escue= resultado.getString("escuela");
                    String mfff= resultado.getString("materia");
                    String dddf= resultado.getString("deporte");
                    out.println("<tr class='datou'><th class='da'>"+idd+"</th>");
                    out.println("<th class='da'>"+unsu+"</th>");
                    out.println("<th class='da'>"+contrasnia+"</th>");
                    out.println("<th class='da'>"+correorr+"</th>");
                    out.println("<th class='da'>"+noum+"</th>");
                    out.println("<th class='da'>"+pe+"</th>");
                    out.println("<th class='da'>"+eme+"</th>");
                    out.println("<th class='da'>"+telef+"</th>");
                    out.println("<th class='da'>"+escue+"</th>");
                    out.println("<th class='da'>"+mfff+"</th>");
                    out.println("<th class='da'>"+dddf+"</th>");
                    out.println("</article>");
                    out.println("</section>");
                }
            }
            catch(SQLException error)
            {
                out.println(error.toString()); 
            }
        %>
        </article>
                                        </section>
        </div>
        <br>
    </body>
</html>

