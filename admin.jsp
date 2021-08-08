<%@page import="database.ValidarServlet1"%>
<%@page import="database.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

        <title>Administrador</title>
         <script type="text/javascript" src="js/admi8.js"></script>
         <!-- Favicons -->
                      <link rel="icon" type="image/png" href="img/logo.jpeg" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">

  <!-- Bootstrap css -->
  <!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
  <link href="menu/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="menu/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="menu/lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
  <link href="menu/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="menu/lib/animate/animate.min.css" rel="stylesheet">
  <link href="menu/lib/modal-video/css/modal-video.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="menu/css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: eStartup
    Theme URL: https://bootstrapmade.com/estartup-bootstrap-landing-page-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>
   <script type="text/javascript">
    window.history.forward();
    function sinVueltaAtras(){ window.history.forward(); }
</script>
        
    <body onload="sinVueltaAtras();" onpageshow="if (event.persisted) sinVueltaAtras();" onunload="">  
    
        <%
            HttpSession s = request.getSession();

            Usuario us = (Usuario) s.getAttribute("usuario");
            String nombre = us.getNombre();
            int id=us.getId();
            if (us == null) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        %>
      
  <header id="header" class="header header-hide">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#body" class="scrollto">OpticaABC</a></h1>
       
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li ><a href="#" onclick="DinamicoDiv('inicio');">Inicio</a></li>
          <li ><a href="#" onclick="DinamicoDiv('empleados'); listarEmpleados();">Empleados</a></li>
          <li><a href="#" onclick="DinamicoDiv('cargos'); listarCargos();">Cargos</a></li>
          <li><a href="#" onclick="DinamicoDiv('sucursales'); listarSucursales();">Sucursales</a></li>
          <li><a href="#" onclick="DinamicoDiv('ventas'); formularioVentas();">Ventas</a></li>
          <li><a href="#" onclick="DinamicoDiv('totalVentas');">Estad&iacute;sticas de ventas</a></li>
          <li><a href="#" onclick="DinamicoDiv('clientes');">Clientes</a></li>
          <li> <a href="CerrarSesionServlet"><b>Cerrar Sesion</b></a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--<a href="#get-started" class="btn-get-started scrollto">Get Started</a>
      <div class="btns">
      </div>
      -->
   
   <input type="hidden" value="<%=id%>" id="idEmpleado">
           
  <div id="inicio">
   <section id="hero" class="wow fadeIn">
    <div class="hero-container">
      <h1><marquee>Bienvenido <%=nombre%> </marquee></h1>
      <h2>Si tienes alg&uacute;n problema con tu cuenta comunicate a ....</h2>
    
      
   </div>
  </section><!-- #hero -->

 </div>
        
                   
 <div id="empleados" style="display: none">
           
            
   <section id="hero" class="wow fadeIn">
    <div>
        <br><br><br>
        <center>
      <h1>Empleados Activos</h1>  <center>
      
     <button class="btn-get-started scrollto" onClick="formularioEmpleado();">+ Dar de alta</button>
    
      
            <div id="tablaEmpleados"></div>
</center>
      <br><br><br><br>
   </div>
       
  </section><!-- #hero -->

 </div>
        

        <div id="cargos" style="display: none">
     
   <section id="hero" class="wow fadeIn">
    <div >
          <br><br><br>
          <center>
      <h1>Cargos</h1>
     <button class="btn-get-started scrollto" onClick="formularioRegistrarCargo();">+ Nuevo Cargo</button>

    
      
            <div id="tablaCargos"></div>
</center>
   </div>
  </section><!-- #hero -->

 </div>
      
      
      
         <div id="sucursales" style="display: none">

   <section id="hero" class="wow fadeIn">
    <div >
        <br><br><br>
        <center>
      <h1>Sucursales</h1>
     <button class="btn-get-started scrollto" onClick="formularioRegistrarSucursal();">+ Nueva Sucursal</button>

    
      
            <div id="tablaSucursales1"></div>
</center>
   </div>
  </section><!-- #hero -->

 </div>
      
           
        <div id="ventas" style="display: none">
            
   <section id="hero" class="wow fadeIn">
    <div >
        <br><br><br>
        <center>
      <h1>Ventas</h1>
     <button class="btn-get-started scrollto" onClick="formularioVentas();">+ Nueva venta</button>
   <button class="btn-get-started scrollto" onClick="listarVentas();" >Ver ventas</button>
    
    
      
            <div id="formularioVentas"></div>
</center>
   </div>
  </section><!-- #hero -->

 </div>
          
          
          
  <div id="totalVentas" style="display: none">
        
      <section id="hero" class="wow fadeIn">
          <div >
              <br><br><br>
              <center>
                   <h1>Estad&iacute;sticas de las Ventas</h1>
                   <br><br>
                  <table width="80%" border="0" >
                      <tr>
                          <td width="20%" align="center" colpan="3">

                              <div class="btns"> <ul><br><br>
                                      <li><a href="#" onClick="ventasporSucursal();"><h4>Por sucursal</h4></a></li><br><br>
                                      <li><a href="#" onclick="ventasporEmpleado();"><h4>Por empleado</h4></a></li><br><br>
                                      <li><a href="#" onclick="ventasporFechas();"><h4>Por fechas</h4></a></li><br><br>
                                  </ul>
                              </div>


                          </td>
                          <td>
                              <div id="menuVentas"></div>
                          </td>

                      </tr>
                  </table>
                   
</center>
              <br><br><br><br>
   </div>
  </section><!-- #hero -->

 </div>
  
      <div id="clientes" style="display: none">
<section id="hero" class="wow fadeIn">
          <div >
              <br><br><br>
              <center>
                   <h1>Opciones de los Clientes</h1>
                   <br><br>
                  <table width="80%" border="0" >
                      <tr>
                          <td width="20%" align="center" colpan="3">

                              <div class="btns"> <ul><br><br>
                                      <li><a href="#" onClick="historialCompras();"><h4>Historial compras</h4></a></li><br><br>
                                      <li><a href="#" onclick="historialClinico();"><h4>Historial Clinico</h4></a></li><br><br>
                                      <li><a href="#" onclick="recompensasLealtad();"><h4>Recompensas de lealtad</h4></a></li><br><br>
                                  </ul>
                              </div>


                          </td>
                          <td>
                              <div id="menuClientes"></div>
                          </td>

                      </tr>
                  </table>
</center>
              <br><br><br><br>
   </div>
  </section><!-- #hero -->

 </div>
    
  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="menu/lib/jquery/jquery.min.js"></script>
  <script src="menu/lib/jquery/jquery-migrate.min.js"></script>
  <script src="menu/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="menu/lib/superfish/hoverIntent.js"></script>
  <script src="menu/lib/superfish/superfish.min.js"></script>
  <script src="menu/lib/easing/easing.min.js"></script>
  <script src="menu/lib/modal-video/js/modal-video.js"></script>
  <script src="menu/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="menu/lib/wow/wow.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="menu/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="menu/js/main.js"></script>

</body>
</html>
