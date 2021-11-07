<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@include file="MenuPrincipal.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
 <!-- JQUERY -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!--FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

   <!-- Los iconos tipo Solid de Fontawesome-->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
   <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>


<form action="" method="post" enctype="multipart/form-data">

<div class="container p-3 my-5 bg-info text-white">
<div >

<div class="row justify-content-center">
<input type="file" value="Examinar" name="archivo" accept=".csv" id="archivoInput" onchange="return validarExt()">
</div>

<div class="row justify-content-center  my-2">
<button  class="btn btn-white" type="submit" name="cargar" >Cargar Productos</button>
</div>
</div>
</div>
</form>

</body>
</html>