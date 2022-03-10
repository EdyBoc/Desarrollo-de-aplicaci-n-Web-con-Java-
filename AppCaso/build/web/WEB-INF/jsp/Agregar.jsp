<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Validación de Formulario con Javascript</title>
        <link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="css/estilos.css">




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

        <div  class="d-flex">
            <div class="card-block  col-sm-1 p-1 ">

            </div>
        </div>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info" style="max-width: 35rem; max-height: 100rem;">
                <div class="card-header   text-white "style="background: rgb(93,0,0);
                     background: linear-gradient(90deg, rgba(93,0,0,1) 0%, rgba(113,0,0,1) 18%, rgba(152,0,0,1) 49%, rgba(221,0,0,1) 100%);"> 
                    <h4 >Agregar Nuevo Registro</h4>
                </div>
                <div class="card-body">
                    <form class="row g-3 needs-validation" novalidate>
                    </form>


                    <form method ="POST" class="needs-validation" novalidate>

                        <Label >Descripcion (*)</label>
                        <input type="text" name="Descripcion" class="form-control" maxlength="1000" minlength="1" required>

                        <Label >Nombre(*)</label>
                        <input type="text" name="Nombre" class="form-control" required >

                        <Label  class="form-label">Nombre Oficina </label>
                        <input type="text" name="NombreOficina" class="form-control" >

                        <Label  class="form-label">Nombre Empleado </label>
                        <input type="text" name="NombreEmpleado" class="form-control" >

                        <Label  class="form-label" for="floatingInput" >Correo Electronico (*)</label>
                        <input type="email" name="Correo" class="form-control"  id="floatingInput" placeholder="usuario@example.com"required >


                        <Label class="form-label">Telefono (*)</label>
                        <input type="number" name="Telefono" class="form-control"  required>

                        <Label>Estatus</label>
                        <select name="estatus" id="estatus">
                            <c:forEach var="estatus" items="${estatus_Lista}">
                                <option value=${estatus.Estatus}>${estatus.Estatus}</option>
                            </c:forEach>
                        </select>

                        <hr> </hr> 

                                      
                            <!-- Button trigger modal -->
                            <button type="button"  type="submit" class="btn  btn-success " data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Enviar
                            </button>

                            <a href="Receptor.htm" class="btn btn-danger" >Cancelar</a>

                        </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="container mt-2 col-lg-4 p-4">
                        <div class="card border-info" style="max-width: 25rem; max-height: 100rem;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">

                                            “Señor cuentahabiente, agradecemos su comunicación, le informamos que su queja ha sido recibida exitosamente. 
                                            Para el seguimiento o cualquier consulta relacionada, no olvide que el número de su queja es QMS-Correlativo-Añoactual,”  
                                        </h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-footer">
                                        <center>  <button href="Receptor.htm" class="btn btn-warning " >Ok</button></center>
                                    </div>
                                </div>
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




                <script>
                    // Example starter JavaScript for disabling form submissions if there are invalid fields
                    (function () {
                        'use strict'

                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        var forms = document.querySelectorAll('.needs-validation')

                        // Loop over them and prevent submission
                        Array.prototype.slice.call(forms)
                                .forEach(function (form) {
                                    form.addEventListener('submit', function (event) {
                                        if (!form.checkValidity()) {
                                            event.preventDefault()
                                            event.stopPropagation()
                                        }

                                        form.classList.add('was-validated')
                                    }, false)
                                })
                    })()

                </script>

                      
                <script src="js/formulario.js"></script>
                <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

                </body>
                </html>