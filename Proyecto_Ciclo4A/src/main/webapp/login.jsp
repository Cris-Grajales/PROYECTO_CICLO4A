<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    
    <title>TIENDA GENERICA</title>
    <!-- JQUERY -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!--FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

   <!-- Los iconos tipo Solid de Fontawesome-->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
   <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

  <!--css-->
   <link rel="stylesheet"type="text/css"href="static/css/Index.css">
</head>
<body>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content">
                <div class="col-12 user-img">
                    <img src="static/img/usuario.png" >

                </div>
                <form class="col-12" action="login" method="post">
                    <div class="form-group" id="user-group">
                      <input type="text" class="form-control" placeholder="Nombre de Usuario" name="username" id="">
                    </div>

                    <div class="form-group" id="contrasena-group">
                        <input type="password" class="form-control" placeholder="Contraseņa" name="password" id="">
                    </div>
                    <button type="submit" class="btn btn-info"><i class="fas fa-sign-in-alt"></i>  Ingresar</button>
                </form>
                <div> </div>
            </div>
        </div>
    </div>
<%
if(request.getParameter("mens")!=null){
	String mensaje= request.getParameter("mens");
	out.print( "<script> Swal.fire({title: '"+mensaje+"', icon: 'warning'});</script>");
}
%>
    
</body>
</html>