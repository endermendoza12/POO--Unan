
<%--//  UNIVERSIDAD NACIONAL AUTONOMA DE NICARAGUA
//  UNAN MANAGUA
//  FACULTAD REGIONAL MULTIDISCIPLINARIA D ECARAZO
//  FAREM - CARAZO
//  CARRERA DE INGENIRÍA EN SISTEMAS DE INFORMACIÓN
//  AÑO III SEMESTRE II
//  MATERIA DE PRACTICAS DE ESPECIALIZACIÓN
//  DOCENTE ARTURO RODRIGUEZ
//  ELABORADO POR: ENDERSSON ALONSO MENDOZA MUÑOZ
//  DICIEMBRE DE 2020--%>
<%-- ESTA ´´AGINA DE CONTACTO ES MERAMENTE DISEÑO, NO TIENE NINGUNA FUNCIONALIDAD --%>




<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contac.aspx.cs" Inherits="WebLayer.Contac" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jquery-3.5.1.min.js"></script>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="TechnologicalStock.aspx">Technological Stock</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="TechnologicalStock.aspx">Data entry <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.aspx">Login</a>
      </li>
    </ul>
  </div>
</nav>




        <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Technological Store</h1>
    <p class="lead">Find everything you need in this your ideal store, desktop computer, laptops and printers</p>
  </div>
</div>



    <form id="form1" runat="server">
    <div>
    <div class="container">
	<div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
          <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">Contact us</legend>
    
            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Name</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Your name" class="form-control">
              </div>
            </div>
    
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Your E-mail</label>
              <div class="col-md-9">
                <input id="email" name="email" type="text" placeholder="Your email" class="form-control">
              </div>
            </div>
    
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Your message</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Please enter your message here..." rows="5"></textarea>
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
              </div>
            </div>
          </fieldset>
          </form>
        </div>
      </div>
	</div>
</div>
    </div>
    </form>
    <style>
        body {padding-top:20px;}
    </style>
</body>
</html>
