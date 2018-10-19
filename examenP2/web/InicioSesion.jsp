
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>
	

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Banner -->
					<section id="intro" class="main">
                                            <article>
                                                <h4><center>Inicia sesion</center></h4>
                                                <form method="post" action="mx.edu.ipn.cecyt9.anicare.controller/LoginServlet">
                        <span>
                            <label for="usuario">Usuario</label>
                            <input type="text" name="usuario" id="usuario"  class="slide-up">
                            
                        </span>
                        <br>
                        <br>
                        <span>
                        <label for="password">Contraseña</label>
                        <input type="password" name="password" id="password"  class="slide-up">
                        
                        </span>
                        <br>
                        <br>
                        <input type="submit" value="Ingresar" class="nop">
                    </form>
            </div>  


		 </article>	
               </section>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
