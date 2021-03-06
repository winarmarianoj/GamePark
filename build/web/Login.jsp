<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/stylesLogin.css">    
    <title>Game Park - Inicio de Sesión</title>
</head>
<body class="log">    

    <header> </header>

    <main>
        <section class="loguer">
            
            <div class="loguerin-dark p-3 shadow-lg rounded justify-content-center">
     
                <!--TITLE FORM-->
                <div class="row d-flex justify-content-center align-items-center pb-4 ">
                    <img src="img/logos.png" width="15%" alt="">
                    <p class="title text-white">Inicio de Sesión</p>
                </div>

                <!--INICIO DEL FORMULARIO-->
                <form action="LoginServlet" method="POST"> 
                    <div class="form-group">
                        <input type="text" id="userName" name="userName"
                            class="form-control form-control-sm bg-light" 
                            placeholder="Nombre de Usuario" required="">
                    </div>

                    <div class="form-group">
                        <input type="password" id="password" name="password"
                            class="form-control form-control-sm bg-light" 
                            placeholder="Contraseña" required="">
                    </div>
                    
                    <input type="submit" id="btnLogin" value="Inicio de Sesion"  class="btn btn-sm btn-warning col"/>

                    <div class="text-center mt-2">
                        <a href="Forgot.jsp" class="text-warning">Olvidaste tu contraseña?</a>
                    </div>
                    
                    <div class="mt-5">
                        <p class="text-white text-center">
                            No tenes una cuenta?
                            <a href="Register.jsp" class="text-warning">Hace click acá para registrarte</a>
                        </p>
                    </div>                    

                </form>
                <!--FIN DEL FORMULARIO-->                
            </div>

            <!--Inicio Footer-->
            <footer class="pt-3 text-muted text-center text-small">                        
                <p class="mb-1">&copy; 2020 Game Park</p>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="#">Nosotros</a></li>
                    <li class="list-inline-item"><a href="#">Términos</a></li>
                    <li class="list-inline-item"><a href="#">Soporte</a></li>
                    <li class="list-inline-item"><a href="#"></a></li>
                    <li class="list-inline-item"><img src="logos/facebook.png" alt=""></li>
                    <li class="list-inline-item"><img src="logos/instagram.png" alt=""></li>
                    <li class="list-inline-item"><img src="logos/linkedin.png" alt=""></li>
                    <li class="list-inline-item"><img src="logos/twiter.png" alt=""></li>
                    <li class="list-inline-item"><img src="logos/youtube.png" alt=""></li> 
                </ul>    
            </footer>
            <!--Fin Footer-->

        </section>

    </main>

    <footer></footer>
    
    <script src="js/login.js"></script>
    <script src="js/uiFunctions.js"></script>
    <script src="js/uiMessages.js"></script>
    <script src="js/requeridos/jquery-3.3.1.min.js"></script>
    <script src="js/requeridos/popper.min.js"></script>
    <script src="js/requeridos/bootstrap.min.js"></script>
    <script src="js/requeridos/sweetalert2.all.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>    
</body>
</html>
