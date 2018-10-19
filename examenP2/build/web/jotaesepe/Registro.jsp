
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ingresa</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            Connection conexion = null;
            Statement sentencia = null;
            ResultSet resultado = null;
            String url="jdbc:mysql://localhost/exa";
            String user="root";
            String password="n0m3l0";
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection(url, user, password);
                sentencia = conexion.createStatement();
                System.out.println("Conectado");
            }
            catch(Exception e){
                System.out.println("Conectadon't osea no");
            }
        %>
        <header>
            <h1 align="center"></h1>
        </header>
        <%
            String usuario = request.getParameter("nusu");
            String correo = request.getParameter("correo");
            String contra = request.getParameter("contra");
            String contrax = request.getParameter("contrasecond");
            String nombre = request.getParameter("nombre");
            String aP = request.getParameter("Paterno");
            String aM = request.getParameter("Materno");
            String telefonito = request.getParameter("tele");
            String escu = request.getParameter("escuela");
            String matF = request.getParameter("MateriaF");
            String depF = request.getParameter("DeporteF");
            try{
                if(contra.equals(contrax)){
                    sentencia.executeUpdate("insert into usuario (usuario, contraseña, correo, namer, P, M, tel, escuela, materia, deporte) "
                            + "values('"+usuario+"','"+contrax+"','"+correo+"','"+nombre+"','"+aP+"','"+aM+"','"+telefonito+"','"+escu+"','"+matF+"','"+depF+"');");
                    out.println("<script>alert('Regstrado')</script>");
                    try{
                        try{
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection(url, user, password);
                        sentencia = conexion.createStatement();
                        System.out.println("Si");
                    }
                    catch(Exception e){
                        System.out.println("NO");
                    }
                    resultado = sentencia.executeQuery("select * from usuarios where usuario = '"+usuario+"' and contra = '"+contra+"'");
                    int contador = 0;
                    while(resultado.next()){
                        contador++;
                    }
                    if(contador == 1){
                        response.sendRedirect("../inicio.jsp");
                    }
                    else{
                        if(contador != 1){
                        try{
                            /* TODO output your page here. You may use following sample code. */
                            out.println("<!DOCTYPE html>");
                            out.println("<html>");
                            out.println("<head>");
                            out.println("<title>Servlet Login</title>");            
                            out.println("</head>");
                            out.println("<body>");
                            out.println("<script>alert('Usuario o contraseña incorrectos')</script>");
                            out.println("<script>window.location='../index.jsp'</script>");
                            out.println("</body>");
                            out.println("</html>");
                            }
                        catch(Exception e){
                    System.out.println("Error");
                }
                    }
                        }
                }catch(Exception e){
                    System.out.println("Error");
                }
                        
                }       
                else
                {
                    out.println("<script>alert('Poner igual las contraseñas')</script>");
                    out.println("<script>window.location='../registrarusuarios.jsp'</script>");
                    System.out.println("No creo");
                }
            }
            catch(Exception e)
            {
                out.println("<script>alert('NEL')</script>");
                out.println("<script>window.location='../index.jsp'</script>");
            }
        %>
    </body>
</html>