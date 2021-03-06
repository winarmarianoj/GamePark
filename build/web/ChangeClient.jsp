<%@page import="logica.Cliente"%>
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
    <!-- API TIEMPO-->
    <script type="text/javascript" src="https://rss2json.com/gfapi.js"></script>
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
          <div class="sidebar" data-color="danger" data-background-color="white">
          
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
                    <li class="nav-item active">
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
                    <li class="nav-item ">
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
                                <li class="list-inline-item"><a href="gameParkNosotros.jsp">Nosotros</a></li>
                                <li class="list-inline-item"><a href="gameParkManual.jsp">Manual</a></li>
                                <li class="list-inline-item"><a href="gameParkSoporte.jsp">Soporte</a></li>
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
             
          
          <!--INICIA CUERPO PRINCIPAL DEL HTML-->
          <div class="content">
            <div class="container-fluid dash">
              <div class="row">

                  <section class="columna2 col-12 offset-fixed ">
                      <!--INICIO DE LA TABLAS E INFORMES -->
                      <div class="col-md-12">
                        <div class="card card-plain"> 

                          <!--INICIA SECCION DEL FORM -->
                          <div class="content formGames">
                            <div class="container-fluid">
                              <div class="row">
                                <div class="col-md-8">
                                  <div class="card">
                                    <div class="card-header card-header-primary">
                                      <h4 class="card-title">Cliente a Cambiar</h4>
                                    </div>
                                    <div class="card-body">
                                        
                                        <%
                                            Cliente cliente = (Cliente) request.getSession().getAttribute("cliente");                                            
                                        %>

                                        <!--INICIO DEL FORMULARIO -->  
                                        <form action="ChangeClienteServlet" method="POST" >                                          
                                          <div class="row my-4">
                                            <div class="col-md-4">
                                              <div class="form-group">
                                                <label class="bmd-label-floating">ID del Cliente</label>
                                                <input type="text" class="form-control" id="idchangeCliente" name="idchangeCliente" value="<%=cliente.getCliente_id()%>">
                                              </div>
                                            </div>       
                                            <div class="col-md-4">
                                              <div class="form-group">
                                                <label class="bmd-label-floating">Nombre del Cliente</label>
                                                <input type="text" class="form-control" id="nombreCliente" name="nombreCliente" value="<%=cliente.getNombre()%>">
                                              </div>
                                            </div>
                                            <div class="col-md-4">
                                              <div class="form-group">
                                                <label class="bmd-label-floating">Apellido del Cliente</label>
                                                <input type="text" class="form-control" id="apellidoCliente" name="apellidoCliente" value="<%=cliente.getApellido()%>">
                                              </div>
                                            </div>                                                                            
                                          </div>
                                          <div class="row my-4">
                                            <div class="col-md-4">
                                              <div class="form-group">
                                                <label class="bmd-label-floating">DNI</label>
                                                <input type="text" class="form-control" id="dniCliente" name="dniCliente" value="<%=cliente.getDni()%>">
                                              </div>
                                            </div>     
                                            <div class="col-md-4">
                                              <div class="form-group">
                                                <label class="bmd-label-floating">Teléfono</label>
                                                <input type="text" class="form-control" id="telefonoCliente" name="telefonoCliente" value="<%=cliente.getTelefono()%>">
                                              </div>
                                            </div><div class="col-md-4">
                                              <div class="form-group">
                                                <label class="bmd-label-floating">Mail</label>
                                                <input type="text" class="form-control" id="mailCliente" name="mailCliente" value="<%=cliente.getMail()%>">
                                              </div>
                                            </div>                           
                                          </div>
                                          <input type="button" name="Supervisar: Primer Paso" id="changeCliente" value="Supervisar: Primer Paso" " class="btn btn-warning"/>  
                                            <p><b>Presione Enviar si salio existoso Supervisar o Regrese al Menú</b></p>
                                          <button id="btnChangeCliente" type="submit" class="btn btn-primary pull-right my-2">Enviar</button>
                                          
                                        </form>
                                        <!--FIN DEL FORMULARIO-->
                                    </div>
                                  </div>
                                </div>
                                
                              </div>
                            </div>
                          </div>
                          <!--FIN SECCION DEL FORM -->

                        </div>
                      </div>
                      <!--FIN DE LA TABLAS E INFORMES -->
                  </section>    
                  
              </div>
            </div>
          </div>
          <!--FIN CUERPO PRINCIPAL DEL HTML-->

          <!--INICIA FOOTER-->
          <footer class="footer">
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
      <!--FIN PANEL DERECHO COMPLETO-->

    </div>
    <!--FIN DEL WRAPPER-->
    
    <script src="js/changeClient.js"></script>
    <script src="js/colorEfects.js"></script>
    <script src="js/uiFunctions.js"></script>
    <script src="js/uiMessages.js"></script>
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
