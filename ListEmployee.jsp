<%@page import="logica.controladora.ManagerControl"%>
<%@page import="logica.Empleado"%>
<%@page import="logica.controladora.ControlEmpleado"%>
<%@page import="logica.Juego"%>
<%@page import="java.util.List"%>
<%@page import="logica.controladora.ControlJuego"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Game Park</title>
    <!-- Meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />    
    <!-- Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- Material Kit CSS -->
    <link href="css/stylesCentral.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
        <%
    HttpSession sesion = request.getSession();    
    String usu = (String) request.getSession().getAttribute("usuario");
    if(usu == null){
        request.getSession().setAttribute("resLogReg", "El Usuario y Contraseña no fueron cargados o estan vacíos.!");
        response.sendRedirect("ResLogRes.jsp");
    }else{
    %>
    <div class="wrapper ">   
        
        <header>

          <!--INICIA MENU LATERAL IZQUIERDO-->
          <div class="sidebar" data-color="orange" data-background-color="white">
          
            <div class="logo row d-flex justify-content-center align-items-center pb-4">
              <img src="img/logos.png" width="30%" alt="">
              <a href="" class="simple-text logo-normal">Game Park</a>
            </div>

            <div class="sidebar-wrapper">

                <!--INICIO OPCIONES-->
                <ul class="nav">
                    <li class="nav-item ">
                        <a class="nav-link" href="Dashboard.jsp">
                          <i class="material-icons">dashboard</i>
                          <p>Noticias en General</p>
                        </a>
                    </li> 
                    <li class="nav-item ">
                        <a class="nav-link" href="Games.jsp">
                          <i class="material-icons">power_settings_new</i>
                          <p>Nuevo Juego y Horario</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Input.jsp">
                          <i class="material-icons">input</i>
                          <p>Nueva Entrada y Cliente</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Changes.jsp">
                          <i class="material-icons">cached</i>
                          <p>Modificaciones</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Delete.jsp">
                          <i class="material-icons">delete</i>
                          <p>Eliminar Objeto</p>
                        </a>
                    </li>                     
                    <li class="nav-item active">
                        <a class="nav-link" href="List.jsp">
                          <i class="material-icons">list</i>
                          <p>Listados</p>
                        </a>
                    </li> 
                    <li class="nav-item ">
                        <a class="nav-link" href="Reports.jsp">
                          <i class="material-icons">content_paste</i>
                          <p>Informes</p>
                        </a>
                    </li>                   
                </ul>
                <!--FIN DE OPCIONES-->

                <!--Inicio del Footer-->
                <section class="col-12 s12 m6 institucional">
                    <div class="col-12 s12 m6 text-muted text-center text-small">
                        <div class="datos">
                            <p class="">&copy; 2020 Game Park</p>
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="GameParkNosotros.jsp">Nosotros</a></li>
                                <li class="list-inline-item"><a href="GameParkManual.jsp">Manual</a></li>
                                <li class="list-inline-item"><a href="GameParkSoporte.jsp">Soporte</a></li>
                            </ul>
                            <ul>
                                <li class=" list-inline-item"><img src="logos/smallLogos/facebook.png" alt=""></li>
                                <li class=" list-inline-item"><img src="logos/smallLogos/instagram.png" alt=""></li>         
                                <li class=" list-inline-item"><img src="logos/smallLogos/twiter.png" alt=""></li>
                                <li class=" list-inline-item"><img src="logos/smallLogos/linkedin.png" alt=""></li>
                                <li class=" list-inline-item"><img src="logos/smallLogos/whatsapp.png" alt=""></li>
                                <li class=" list-inline-item"><img src="logos/smallLogos/youtube.png" alt=""></li>
                            </ul>            
                        </div>
                    </div>
                </section>
                <!--Fin del Footer-->

            </div>          

          </div>
          <!--FIN MENU LATERAL IZQUIERDO-->
        </header>
      

        <!--INICIA PANEL DERECHO COMPLETO-->
        <div class="main-panel">

            <!--INICIA MENU SUPERIOR-->
            <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
              <div class="container-fluid">          
                <div class="collapse navbar-collapse justify-content-end">
                  <ul class="navbar-nav">
                    <li>
                      <button class="btn btn-light" id="btnInicio" onclick="formColorsInicio(btnInicio)" data-toggle="tooltip" data-placement="top" title="Más Brillo"><img src="icons/inicio.png" alt=""></button>
                    </li>
                    <li>
                      <button class="btn btn-dark" id="btnSunrise" onclick="formColorsSunrise(btnSunrise)" data-toggle="tooltip" data-placement="top" title="Más cálido sin Brillo"><img src="icons/amanecer.png" alt=""></button>
                    </li>
                    <li>
                      <button class="btn btn-dark" id="btnDays" onclick="formColorsDay(btnDays)" data-toggle="tooltip" data-placement="top" title="Un Gris tranquilo"><img src="icons/dom.png" alt=""></button>
                    </li>
                    <li>
                      <button class="btn btn-dark" id="btnNight" onclick="formColorsNight(btnNight)" data-toggle="tooltip" data-placement="top" title="Estilo Noche"><img src="icons/luna.png" alt=""></button>
                    </li>                    
                  </ul>
                </div>
              </div>
            </nav>
            <!--FIN MENU SUPERIOR-->

            <!--INICIA SECCION DE INFORMES Y TABLAS -->
            <div class="content">
              <div class="container-fluid">
                <div class="row">                  

                  <!--INICIO DE LA TABLAS E INFORMES -->
                  <div class="col-md-12">
                    <div class="card card-plain">

                      <div class="card-header card-header-primary">
                        <h4 class="card-title mt-0"> Listados de Empleados</h4>                       
                      </div>

                      <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id="reportTable">
                                <thead>
                                    <tr>
                                      <th>ID Empleado</th>
                                      <th>Nombre</th>
                                      <th>Apellido</th>
                                     </tr>
                                </thead>
                                
                                <tbody>
                                    <tr>
                                        <%		
                                        ManagerControl manager = ManagerControl.getInstante();
                                        List<Empleado> listEmp = manager.getCemp().traerEmpleado();
                                        for (Empleado emp : listEmp) { 
                                %>
                                      <td><%=emp.getEmpleado_id()%></td>
                                      <td><%=emp.getNombre()%></td>
                                      <td><%=emp.getApellido()%></td>
                                    </tr>

                                      <% } %>
                                </tbody>
                                
                            </table>
                        </div>
                      </div>                      
                     
                    </div>
                  </div>
                  <!--FIN DE LA TABLAS E INFORMES -->


                  <!--INICIA FOOTER-->
                  <footer class="firma">
                    <div class="container-fluid">          
                      <div class="copyright float-right">
                        &copy;
                        <script>
                          document.write(new Date().getFullYear())
                        </script>, made with <i class="material-icons">favorite</i> by
                        <a href="https://cv.winarmarianoj.vercel.app/" target="_blank">Mariano Wiñar</a> for a better web.
                      </div>          
                    </div>
                  </footer>
                  <!--FIN DEL FOOTER-->

                </div>
              </div>
            </div>
            <!--INICIA SECCION DE INFORMES Y TABLAS -->

        </div>
        <!--FINAL PANEL DERECHO COMPLETO--> 
        
    </div>  
    <!--FINAL WRAPPER--> 
    
    <script src="js/colorEfects.js"></script>
    <script src="js/requeridos/jquery-3.3.1.min.js"></script>
    <script src="js/requeridos/popper.min.js"></script>
    <script src="js/requeridos/bootstrap.min.js"></script>
    <script src="js/requeridos/sweetalert2.all.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <% }        
    %>
</body>

</html>

