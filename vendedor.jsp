<%@page import="database.ValidarServlet1"%>
<%@page import="database.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleado</title>
         <script type="text/javascript" src="js/admi8.js"></script>
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
        <br>
        <br>
        <br>
  
        <table width="85%">
           <tr>
                <td width="30%"  align="right"><img src="img/a.png" alt="Logo"/></td>
                <td width="60%" align="center"><h1>&Oacute;ptica ABC </h1></td>
            </tr>
        </table>
    <center> 
        <table width="90%" border="4">
            <tr>
                <td style="border: none" width="20%" align="center"><a href="#" onclick="DinamicoDiv('inicio');">Inicio</a></td>  
               <td  style="border: none" width="40%" align="center"><a href="#" onclick="DinamicoDiv('ventas'); formularioVentas();">Ventas</a></td>
                <td style="border: none" width="40%" align="center"><a href="#" onclick="DinamicoDiv('clientes');">Clientes</a></td>
         
                
            </tr>
        </table>

        <div id="inicio">
            <h3><marquee>Bienvenido <%=nombre%> </marquee></h3>
            <input type="hidden" value="<%=id%>" id="idEmpleado">
            <table border="2" width="85%">
                <tr>

                    <td>
                        Info
                    </td>
                </tr>
            </table>
        </div>

        <!--<div id="tablaEmpleados"></div-->
        
        <div id="ventas" style="display: none">

            <table width="90%">
                <tr>
                    <td  width="30%" align="right"><h2></h2></td>
                    <td width="25%" align="center" colpan="3"><button onClick="listarVentas();">Ver ventas</button>
                        <button onClick="formularioVentas();" >Nueva venta</button></td>
    
                </tr>
            </table>
            <div id="formularioVentas"></div>
            
        </div>

        <div id="clientes" style="display: none">
            <br>
            <table width="90%" border="1" >
                <tr>
                    <td width="20%" align="center" colpan="3"><br><br><ul>
                            <li><a href="#" onClick="historialCompras();">Historial compras</a></li><br>
                            <li><a href="#" onclick="historialClinico();">Historial Clinico</a></li><br>
                            <li><a href="#" onclick="recompensasLealtad();">Recompensas de lealtad</a></li><br>
                        </ul>
                    </td>
                    <td width="80%" align="center" colpan="3">
                        
            <div id="menuClientes"></div>
                    </td>
                    
                </tr>
            </table>
        </div>
         
    </center>
   
   <div id="..."></div>
   
                    
             
                
 <a href="CerrarSesionServlet" id="cerrar">Cerrar Sesion</a>
   
</body>
</html>
