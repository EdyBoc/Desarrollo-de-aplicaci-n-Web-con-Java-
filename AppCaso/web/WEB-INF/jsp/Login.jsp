
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <title>Welcome to Spring Web MVC project</title>
    </head>
    <body style="background: rgb(0,10,29);
          background: linear-gradient(122deg, rgba(0,10,29,1) 1%, rgba(4,100,119,1) 100%, rgba(6,118,140,1) 100%, rgba(7,128,152,1) 100%, rgba(34,193,195,1) 100%);">

        <!--Menu de las clases modales -->
        <div  style="background: linear-gradient(122deg, rgba(4,100,119,1) 12%, rgba(6,118,140,1) 32%, rgba(7,128,152,1) 39%, rgba(34,193,195,1) 75%);">
            <div class="container p-4 ml-5 ">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="btn-group-orizontal mt-0 text-white">
                            <button  type="button" class="btn btn-dark " data-toggle="modal" data-target="#example" data-whatever="@nombreDeUsuario" >Usuario</button>│

                            <button  type="button" class="btn btn-dark " data-toggle="modal" data-target="#modal2" data-whatever="@nombreDeUsuario" >Informacion</button>│       
                            <a href="Receptor.htm" class="btn btn-dark "  role="button" aria-pressed="true">Usuario (Cuentahabiente)</a>│
                            <a href="index.htm" class="btn btn-dark "  role="button" aria-pressed="true">Salir</a>
                        </div>
                    </div>                                        
                </div>                  
            </div>
        </div>

        <!--modal 1 -->
        <div class="modal fade" id="example" tabindex="-1" role="dialog" aria-labelledby="exampleLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content" style="width: 20rem;">
                    <div class="modal-header text-white" style="background: rgb(93,0,0);
                         background: linear-gradient(90deg, rgba(93,0,0,1) 0%, rgba(113,0,0,1) 18%, rgba(152,0,0,1) 49%, rgba(221,0,0,1) 100%);">
                        <h5 class="modal-title" id="exampleModalLabel">Banco mi Pisto</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">                         
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">     

                        <div class="form-group">
                            <center><h4>Iniciar Sesion </h4>   </center>                        
                            <form  method ="POST">
                                <Label>Usuario</label>
                                <input type="text" name="user" class="form-control" required>
                                <Label>Contraseña</label>
                                <input type="Password" name="clave" class="form-control" required>
                                <hr> </hr>
                                <br>
                                <center> <input  id="html_element" type="submit"  class="btn btn-dark" value="Ingresar" ></center>     

                            </form>
                        </div>        
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>

        <!--modal 2 -->

        <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="modal2Label" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content" style="width: 32rem;">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modal2Label">Integrantes</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body ">
                        <p>Edy Noe Boc Monroy</p>
                        <p >7590-20-10988</p>
                        <hr class="card text-dark"> </hr>
                        <p>Miguel </p>
                        <p>7590-20-836</p>
                    </div>        
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    <center> <img src=" https://pngimg.com/uploads/bank/bank_PNG28.png"></center>
    <div class="container center-block p-1" >
        <div class="row justify-content-center">
            <div class="card-header text-white" style="background: rgb(250,0,0);
                 background: linear-gradient(90deg, rgba(250,0,0,1) 0%, rgba(221,0,0,1) 0%, rgba(152,0,0,1) 34%, rgba(113,0,0,1) 67%, rgba(93,0,0,1) 100%);"><b><FONT SIZE=6>BANCO MI PISTO</FONT></b></div>

        </div>
    </div>

    <script src="jquery/jquery-3.3.1.min.js"></script>	 	
    <script src="popper/popper.min.js"></script>	 	 	
    <script src="bootstrap4/js/bootstrap.min.js"></script>   	
    <script src="jqueryUI/jquery-ui-1.12.1/jquery-ui.min.js"></script>  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    <!-- Alertas -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</body>
</html>