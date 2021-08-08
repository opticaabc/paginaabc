<%@page import="database.ValidarServlet1"%>
<%@page import="database.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ÓPTICA ABC</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
                <link rel="icon" type="image/png" href="img/logo.jpeg" />

    </head>
    <body class="is-preload" >
        <br>
        <br>
    <center>
        <header id="header">
            
				 <h2>Inicio de Sesi&oacute;n</h2>
				</header>
        
        <form action="ValidarServlet1" method="post" id="signup-form">
            
                    <table width="100%" border="0">
                        
                        
                        
                        <tr>
                               
                    
                            <td><center>
                                <p><img class="circular--square" src="img/logo.jpeg"></p><h3>Usuario</h3>
                            <input type="text" name="txtCorreo" placeholder="abc@gmail.com" form="signup-form"></center> <br>
                    </td>  
                    
                    <br>
                        </tr>
                        <tr>
                        <td><center><p><h3>Contraseña</h3></p><input type="password" name="txtPass" placeholder="Password" form="signup-form"></center><br>
                    <br> </td>
                        </tr>
                         
                        <tr>
                            <td><center><input type="submit" value="Iniciar sesión" form="signup-form">  <br><br> <div> </div></center> </td>  
                       
                       
                        </tr>
                       
                      </table>
            
            </form>
        </center>
		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="https://www.instagram.com/optica_visualabc/" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                                        <li><a href="https://www.facebook.com/Optica-Visual-ABC-107733947754627" class=""><span class="label"><h4>f</h4></span></a></li>
					<li><a href="https://api.whatsapp.com/send/?phone=525617291043&text&app_absent=0" class="icon fa-envelope"><span class="label">What's app</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; M&eacute;xico.</li><li>Credits: <a href="#">OpticaABC</a></li>
				</ul>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/main.js"></script>

    </body>
</html>


