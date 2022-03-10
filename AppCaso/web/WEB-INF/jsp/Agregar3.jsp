<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <title>Proyecto Web</title>
    </head>
    <body style="background: rgb(0,10,29);
          background: linear-gradient(122deg, rgba(0,10,29,1) 1%, rgba(4,100,119,1) 100%, rgba(6,118,140,1) 100%, rgba(7,128,152,1) 100%, rgba(34,193,195,1) 100%);">


        <div class="container mt-4 col-lg-4">
            <div class="card border-info" style="max-width: 20rem; max-height: 45rem;">
                <div class="card-header   text-white "style="background: rgb(93,0,0);
                         background: linear-gradient(90deg, rgba(93,0,0,1) 0%, rgba(113,0,0,1) 18%, rgba(152,0,0,1) 49%, rgba(221,0,0,1) 100%);"> 
                    <h4 >Agregar Nuevo Registro</h4>
                </div>
                <div class="card-body">
                    <form method ="POST" class="needs-validation" novalidate>

                        <Label for="validationCustom03" class="form-label">Descripcion</label>
                        <input type="text" name="Descripcion" class="form-control">

                        <div class="valid-feedback">
                            Llenar todo el campo!

                        </div>

                        <Label for="validationCustom04" class="form-label">Siglas</label>
                        <input type="text" name="Siglas" class="form-control">

                        <div class="valid-feedback">
                            Llenar todo el campo!

                        </div>
                       
                        <hr> </hr>   

                        <!-- Button trigger modal -->
                        <button type="button" class="btn  btn-success " data-bs-toggle="modal" data-bs-target="#exampleModal">
                         Guardar
                        </button>
                      
                        <a href="Menu3.htm" class="btn btn-danger" >Cancelar</a>                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">“¿Está seguro de que desea guardar el tipo de queja ingresada?”</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                   
                                    </div>
                                    <div class="modal-footer">
                                        <button href="Menu3.htm" class="btn btn-danger " >Si</button>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                    </div>
                                </div>
                            </div>
                        </div>                     
                </div>             
            </div>      
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>