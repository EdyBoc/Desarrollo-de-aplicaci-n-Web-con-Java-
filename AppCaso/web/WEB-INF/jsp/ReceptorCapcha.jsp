
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<!-- Recapcha -->
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
</script>

<script type="text/javascript">
    var onloadCallback = function () {
        grecaptcha.render('html_element', {
            'sitekey': '6LfOlfMcAAAAAIodp-bp_-iWPRz2yN2zJA_rZ0f_',
            'theme' : 'dark'
        });
    };
</script>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>App Catalogo</title>
    </head>

    <body style="background: rgb(0,10,29);
          background: linear-gradient(122deg, rgba(0,10,29,1) 1%, rgba(4,100,119,1) 100%, rgba(6,118,140,1) 100%, rgba(7,128,152,1) 100%, rgba(34,193,195,1) 100%);">

        <div class="container center-block p-4 " >
            <div class="row justify-content-center">
                <div style="background: linear-gradient(122deg, rgba(4,100,119,1) 12%, rgba(6,118,140,1) 32%, rgba(7,128,152,1) 39%, rgba(34,193,195,1) 75%);"
                     <div class="card text-white " style="max-width: 95rem; max-height: 45rem;">
                        <div class="card-body">

                            <p class="card-text">El catálogo de puntos de atención para el control de quejas por mal servicio o servicio no conforme por medio Aplicación Móvil del Banco Mi Pistio.</p>
                            <hr class="card text-white">  </hr>
                        </div>
                    </div> 
                </div> 
            </div> 

            <div class="container center-block p-4 " >
                <div class="row justify-content-center">
                    <div style="background: rgb(93,0,0);
                         background: linear-gradient(324deg, rgba(93,0,0,1) 0%, rgba(117,24,11,1) 0%, rgba(255,159,70,1) 100%);"
                         <div class="card text-white  " style="max-width: 95rem; max-height: 45rem;">

                            <center> <div class="card-header" style="background: rgb(63,94,251);
                                          background: linear-gradient(90deg, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%);">Sistema de Quejas </div></center>
                            <div class="card-body mb-5">                                                        
                                                              
                                <form  method ="POST">                                                                                                                                   
                                    <div id="html_element"></div>
                                    <br>
                                    <center> <a href="Agregar.htm"  id="html_element" class="btn btn-info "role="button" aria-pressed="true" >Ingresar </a></center>
                                                                                                                      
                                </form>
                                
                            </div>    
                        </div>
                    </div>
                </div>                      
            </div>
        </div> 
    </div> 

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>

