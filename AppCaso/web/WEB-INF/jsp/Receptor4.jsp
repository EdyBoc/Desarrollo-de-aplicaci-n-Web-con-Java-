
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
                            <div style="background: linear-gradient(122deg, rgba(4,100,119,1) 12%, rgba(6,118,140,1) 32%, rgba(7,128,152,1) 39%, rgba(34,193,195,1) 75%);"
                             <div class="card text-white " style="max-width: 95rem; max-height: 45rem;"
                                 <div class="card text-white  " style="max-width: 95rem; max-height: 45rem;">

                                    <center> <div class="card-header" style="background: rgb(63,94,251);
                                                  background: linear-gradient(90deg, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%);">Sistema de Quejas </div></center>

                                    <div class="card-body mb-1">                                                        

                                        <center> <a href="Agregar4.htm" class="btn btn-primary btn-ms  active "role="button" aria-pressed="true" >Ingresar Nueva Queja
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                                                    <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                                </svg>

                                            </a></center> 
                                        <hr class="card text-white">  </hr> 

                                        <form class="d-flex" method="POST">
                                            <input class="form me-2" type="search" id="Descripcion" name="Descripcion" placeholder="Buscar consulta" aria-label="Autocounsultas">
                                                <button class="btn btn-dark" type="submit"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Buscar queja </font></font>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-ui-checks-grid" viewBox="0 0 16 16">
                                                        <path d="M2 10h3a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1zm9-9h3a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-3a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zm0 9a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-3zm0-10a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h3a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2h-3zM2 9a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h3a2 2 0 0 0 2-2v-3a2 2 0 0 0-2-2H2zm7 2a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2h-3a2 2 0 0 1-2-2v-3zM0 2a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm5.354.854a.5.5 0 1 0-.708-.708L3 3.793l-.646-.647a.5.5 0 1 0-.708.708l1 1a.5.5 0 0 0 .708 0l2-2z"/>
                                                    </svg>  </button>
                                        </form>
                                        <div align="right" >                                    
                                            <hr class="card text-white" >  </hr>
                                            <a href="Login.htm" class="btn btn-danger btn-ms  active "role="button" aria-pressed="true" >Salir</a>
                                            <hr class="card text-white">  </hr> 
                                            <center> <img src=" https://pngimg.com/uploads/bank/bank_PNG28.png" width="70" height="70" ></center>
                                        </div>                                                                           
                                        <hr class="card text-white">  </hr>
                                        <a href="Menu.htm" class="btn btn-outline btn-ms  active "role="button" aria-pressed="true" >Opcion para ver el registro en el catalogo
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-ui-checks-grid" viewBox="0 0 16 16">
                                                <path d="M2 10h3a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1zm9-9h3a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-3a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zm0 9a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h3a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-3zm0-10a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h3a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2h-3zM2 9a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h3a2 2 0 0 0 2-2v-3a2 2 0 0 0-2-2H2zm7 2a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2h-3a2 2 0 0 1-2-2v-3zM0 2a2 2 0 0 1 2-2h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm5.354.854a.5.5 0 1 0-.708-.708L3 3.793l-.646-.647a.5.5 0 1 0-.708.708l1 1a.5.5 0 0 0 .708 0l2-2z"/>
                                            </svg>  
                                        </a>

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