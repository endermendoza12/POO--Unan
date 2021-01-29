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
<%-- ESTA PAGINA ES LA DEL INICIO DE SESION, LLEVA UN DIEÑO SACADO DE BOOTSTRAP Y TIENE LA FUNCIONALUIDAD DE QUE
    SOLO PERMITE LA ENTRADA SI EL USUARIO Y CONTRASEÑA INTRODUCIDOS ESTAN ALMACENADOS EN LA BASE DE DATOS+ --%>





<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebLayer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Bootstrap/bootstrap.css" />
    <script src="scripts/jquery-3.5.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

</head>
    <body>
       <form id="form1" runat="server"  method="post" class="form"> 
     <div class="container py-5">
    <div class="row">
        <div class="col-md-12">
		
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <!-- form card login -->
                    <div class="card rounded-0" id="login-form">
                        <div class="card-header">
                            <h3 class="mb-0">User Login</h3>
                        </div>
                        <div class="card-body">
                           
                                <div class="form-group">
                                    <label for="uname1">Username</label>
                                    <input type="text" class="form-control form-control-lg rounded-0" name="uname1" id="txtUser" runat="server" required=""/>
     
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control form-control-lg rounded-0" id="txtPassword" runat="server" required=""/>
                                    <br />
                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" CssClass="btn btn-primary btn-lg float-right"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         </div>           
                            </form>
</body>





</html>
