<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>Proyecto Web</title>
    </head>
    <body style="background: rgb(0,10,29);
          background: linear-gradient(122deg, rgba(0,10,29,1) 1%, rgba(4,100,119,1) 100%, rgba(6,118,140,1) 100%, rgba(7,128,152,1) 100%, rgba(34,193,195,1) 100%);">

        <div class="container mt-4 col-lg-4">
            <div class="card border-dar" style="max-width: 45rem; max-height: 45rem;">
                <div class="card border-dark">
                    <div class="card-header  text-white"  style="background: rgb(93,0,0);
                         background: linear-gradient(90deg, rgba(93,0,0,1) 0%, rgba(113,0,0,1) 18%, rgba(152,0,0,1) 49%, rgba(221,0,0,1) 100%);"> 

                        <div style="background: rgb(93,0,0);
                             background: linear-gradient(324deg, rgba(93,0,0,1) 0%, rgba(117,24,11,1) 0%, rgba(255,159,70,1) 100%);"
                             <div class="card text-white  " style="max-width: 95rem; max-height: 45rem;">


                                <h4>Consulta</h4>
                            </div>
                             
                            <div class="card-body">
                                <form method ="POST">   
                                    <Label>Correlativo</label>
                                    <input type="text" name="Descripcion" class="form-control" value = "${lista[0].correlativo}" >                           

                                    <hr></hr>
                                    <div style=" ">
                                        <div class="card text-dark " style="max-width: 45rem; max-height: 10rem;">  
                                            <div class=" themed-grid-col">
                                                <label class="text-success "> <b> DESCRIPCION</b></label>
                                            </div>
                                            <div class=" themed-grid-col">
                                                <label>${lista[0].Descripcion}</label>        
                                            </div>
                                        </div>
                                    </div>
                                    <hr></hr>
                                    <div style=" ">
                                        <div class="card text-dark " style="max-width: 45rem; max-height: 10rem;">  
                                            <div class=" themed-grid-col">
                                                <label class="text-success "> <b>ESTATUS</b></label>
                                            </div>
                                            <div class=" themed-grid-col">
                                                <label>${lista[0].Estatus}</label>        
                                            </div>
                                        </div>
                                    </div>

                                    <hr></hr>

                                    <div style=" ">
                                        <div class="card text-dark " style="max-width: 15rem; max-height: 10rem;">  
                                            <div class=" themed-grid-col">
                                                <label class="text-success "> <b> NOMBRE</b></label>
                                            </div>
                                            <div class=" themed-grid-col">
                                                <label>${lista[0].NOMBRE}</label>        
                                            </div>
                                        </div>
                                    </div>

                                    <hr></hr>
                                    <div style=" ">
                                        <div class="card text-dark " style="max-width: 45rem; max-height: 10rem;">  
                                            <div class=" themed-grid-col">
                                                <label class="text-success "> <b>NOMBRE OFICINA</b></label>
                                            </div>
                                            <div class=" themed-grid-col">
                                                <label>${lista[0].NombreOficina}</label>        
                                            </div>
                                        </div>
                                    </div>     
                                    <hr></hr>    
                                    <div style=" ">
                                        <div class="card text-dark " style="max-width: 45rem; max-height: 10rem;">  
                                            <div class=" themed-grid-col">
                                                <label class="text-success "> <b>NOMBRE EMPLEADO</b></label>
                                            </div>
                                            <div class=" themed-grid-col">
                                                <label>${lista[0].NombreEmpleado}</label>        
                                            </div>
                                        </div>
                                    </div> 


                                    <hr></hr>    
                                    <div style=" ">
                                        <div class="card text-dark " style="max-width: 45rem; max-height: 10rem;">  
                                            <div class=" themed-grid-col">
                                                <label class="text-success "> <b>CORREO ELECTRONICO</b></label>
                                            </div>
                                            <div class=" themed-grid-col">
                                                <label>${lista[0].Correo}</label>        
                                            </div>
                                        </div>
                                    </div>  


                                    <hr></hr>    
                                    <div style=" ">
                                        <div class="card text-dark " style="max-width: 45rem; max-height: 10rem;">  
                                            <div class=" themed-grid-col">
                                                <label class="text-success "> <b>NUMERO TELEFONICO</b></label>
                                            </div>
                                            <div class=" themed-grid-col">
                                                <label>${lista[0].Telefono}</label>        
                                            </div>
                                        </div>
                                    </div>  
                                    <hr> </hr>
                                    <a href="Receptor4.htm" class="btn btn-warning" >Regresar</a>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    <!-- Alertas -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <script src="jquery/jquery-3.3.1.min.js"></script>	 	
    <script src="popper/popper.min.js"></script>	 	 	
    <script src="bootstrap4/js/bootstrap.min.js"></script>   	
    <script src="jqueryUI/jquery-ui-1.12.1/jquery-ui.min.js"></script>




</body>
</html>