
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
<%-- ESTA ES LA PAGINA PRINCIPAL, EN ESTA SE MUESTRA PUBLICIDAD DEL ALMACEN Y MÁS IMPORTANTE AUN 
    ACA SE MUESTRAN LOS DATOS DE L BASE DE DATOS A TRAVES DE UN GRIDVIEW, A LA VEZ QUE SE PUEDE ELIMINAR Y MODIFICARV DATOS
    CON SOLO INTRODUCIR EL CODIGO DEL DATO A CAMBIAR, ESTO EN VENTANAS MODALES, A LA VEZ QUE REDIRIGIE A LAS 
    OTRAS PÁGINAS ---- EL DISEÑO ESTA BASADO EN BOOTSRAP, TANTO LAS VENTANA SMODALES COMO CASI TODO 
    EL CONTENIDO DE LA PÁGINA PRINCIPAL--%>




<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="WebLayer.ShowData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="scripts/popper.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="Css/Style.css" rel="stylesheet" />
    <script src="scripts/jquery-3.5.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/StyleGrid.css" rel="stylesheet" />
    <link href="Css/Footer.css" rel="stylesheet" />


   <script>


       $(function () {
           $('[data-toggle="tooltip"]').tooltip() //  funcion para mostrar tooltip en textbox de bootstrap
       })

   </script>


</head>
<body>
    <form id="form1" runat="server"> 



    <div>
    
       <%--  BARRA DE NAVEGACION--%> 
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="ShowData.aspx">Technological Stock</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Data entry <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contac.aspx">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.aspx">Logout</a>
      </li>
    </ul>
  </div>
</nav>

        <%-- jUMBOTRON DE INFORMACION  --%>


        <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Computer store</h1>
    <p id="te" class="lead">Find everything you need in this your ideal store, desktop computer, laptops and printers</p>
  </div>
</div>

       
<div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnologicalWarehouseConnectionString %>" ProviderName="<%$ ConnectionStrings:TechnologicalWarehouseConnectionString.ProviderName %>" SelectCommand="SELECT tblRecordProducts.* FROM tblRecordProducts INNER JOIN tblRecordProducts AS tblRecordProducts_1 ON tblRecordProducts.ProductCode = tblRecordProducts_1.ProductCode" UpdateCommand="SELECT ProductCode, NameProduct, ProductDescription, ProductBrand, ProductModel, ProductSerial, ProductStatus FROM tblRecordProducts"></asp:SqlDataSource>    
<%-- DATASOURCE PARA MOSTRAR LOS DATOS DE LA BD EN LA GRIDVIEW --%> 


        <div class="card text-center">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Computer Stock</h5>
    <p class="card-text">This is the main page where the data of the database is shown through a gridview, 
        at the same time that data can be modified or deleted by entering the code.</p>
      <a data-toggle="modal" href="#AddItemModal" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="Add item to data base">Add item</a>
 
  </div>
  <div class="card-footer text-muted">
    Endersson Alonso Mendoza Muñoz
  </div>
</div>



<%--
                carrusel--%>




                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="Images/desktop.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/laptop.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/printer.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <br />
    <br />


    <%-- GRIDVIEW --%>
            <asp:GridView ID="dtgShowData" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDataSource1" GridLine="false"
                AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                PageSize="7" >
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                        <Columns>
                            
                            <asp:BoundField DataField="ProductCode" HeaderText="Product Code" SortExpression="ProductCode" />
                            <asp:BoundField DataField="NameProduct" HeaderText="Name Product" SortExpression="NameProduct" />
                            <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" SortExpression="ProductDescription" />
                            <asp:BoundField DataField="ProductBrand" HeaderText="Product Brand" SortExpression="ProductBrand" />
                            <asp:BoundField DataField="ProductModel" HeaderText="Product Model" SortExpression="ProductModel" />
                            <asp:BoundField DataField="ProductSerial" HeaderText="Product Serial" SortExpression="ProductSerial" />
                            <asp:BoundField DataField="ProductStatus" HeaderText="Product Status" SortExpression="ProductStatus" />
                            

                        </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
                    </asp:GridView>
    <br />
    <br />
    

                 <div> 
              <a data-toggle="modal" href="#AddItemModal" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="Add item to data base">Add item</a>          
             <a data-toggle="modal" href="#UpdateElementModal" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="Update elements as indicated code" >Update item</a>
             <a data-toggle="modal" href="#borrarElementoModal" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top" title="Display a menu to delete according to the code">Delete item</a>
                     
             <%--<a href="TechnologicalStock.aspx" class="btn btn-outline-primary">Add item</a>--%>
        </div>

        </div>
       

       


        <%--Modal de eliminar--%>


        <div class="modal fade" id="borrarElementoModal" tabindex="-1" aria-labelledby="borrarElementoModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="borrarElementoModalLabel">Delete element</h5>
           
      </div>
      <div class="modal-body">
          <input id="txtDeleteId" type="text" runat="server" placeholder="Input your code" data-toggle="tooltip" data-placement="top" title="Enter the code of item you want to remove"/>
      </div>
      <div class="modal-footer">
       <button type="button" data-bs-dismiss="modal" aria-label="Delete" id="btnDelete" data-toggle="modal" href="#borrarElementoModal" runat="server" class="btn btn-secondary" onserverclick="btnDelete_Click"  data-placement="top" title="Delete the element indicated by id code"> Delete</button>
         <button type="button" data-bs-dismiss="modal" aria-label="Delete" id="btnDeleteAll" data-toggle="modal" href="#borrarElementoModal" runat="server" class="btn btn-secondary" onserverclick="btnDeleteAll_Click"  data-placement="top" title="Remove all items | This action can not be undone" >Delete All</button>                
      </div>
    </div>
  </div>
</div>




<%--  Modal de modificar--%>



<div class="modal fade" id="UpdateElementModal" tabindex="-1" aria-labelledby="UpdateElementModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="UpdateElementModalLabel">Update element</h5>
           
      </div>
      <div class="modal-body">
          <input id="txtUpdateModalCode" type="text" runat="server" placeholder="Input your code" data-toggle="tooltip" data-placement="top" title="Enter the code of item you want to update" />
      </div>
      <div class="modal-footer">

        

<%--          AQUI VA LA TABLA DEL MODAL DE MODIFICAR--%>


           <table>
           
            <tr>
                <td style="width:50%">Product name</td>
                 <td style="width:50%">
                     <asp:DropDownList ID="drpProductNameModal" runat="server">
                         <asp:ListItem>Laptop</asp:ListItem>
                         <asp:ListItem>Desktop</asp:ListItem>
                         <asp:ListItem>Printer</asp:ListItem>
                     </asp:DropDownList>  </td>
            </tr>
            <tr>
                <td class="Width:50%">Description</td>
                <td class="auto-style3"><asp:TextBox ID="txtDescripionModal" runat="server" placeHolder="Description of the product"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50%">Brand</td>
                <td style="width:50%"><asp:TextBox ID="txtBrandModal" runat="server" placeHolder="Brand"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50%">Model</td>
                <td style="width:50%"><asp:TextBox ID="txtModelModal" runat="server" placeHolder="Model"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50%">Serial</td>
                <td style="width:50%">  <asp:TextBox ID="txtSerialModal" runat="server" placeHolder="Serial"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50%">Status</td>
                <td style="width:50%">
                    <asp:DropDownList ID="drpStatusModal" runat="server">
                        <asp:ListItem Value="Working"></asp:ListItem>
                        <asp:ListItem Value="Taken"></asp:ListItem>
                        <asp:ListItem Value="Discharged"></asp:ListItem>
                        <asp:ListItem Value="Available"></asp:ListItem>
                        <asp:ListItem Value="Not available"></asp:ListItem>
                    </asp:DropDownList> </td>
            </tr>
</table>
          
                            
          <button type="button" data-bs-dismiss="modal" aria-label="Update" id="btnUpdate" data-toggle="modal" href="#UpdateElementModal" runat="server" class="btn btn-secondary" onserverclick="btnUpdate_Click"  data-placement="top" title="Update this item ">Update</button>               
      </div>
    </div>
  </div>
</div>




    </div>



        <br />
         <br />
         <br />
         <br />






        <%-- Modal para agregar --%>



         <div class="modal fade" id="AddItemModal" tabindex="-1" aria-labelledby="AddItemModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      
      <div class="modal-body">
          

           <div class="container">
        <div class="form-sec">
            
                <h1>Add item</h1>

    <div class="form-group">
      <label>Product code:</label>
      <input id="txtProductCode" class="form-control" runat="server" type="number"  placeholder="Product code" maxlength="5" min="0"/>
    </div>

<div class="form-group">
      <label>Product name:</label>
      <asp:DropDownList ID="dropProductName" runat="server" CssClass="form-control" DataTextField="ProductStatus" DataValueField="ProductStatus">
                         <asp:ListItem>Laptop</asp:ListItem>
                         <asp:ListItem>Desktop</asp:ListItem>
                         <asp:ListItem>Printer</asp:ListItem>
                     </asp:DropDownList> 
    </div>


    <div class="form-group">
      <label>Descripion:</label>
      <asp:TextBox ID="txtDescription" runat="server" placeHolder="Description of the product" CssClass="form-control"></asp:TextBox>
    </div>


    <div class="form-group">
      <label>Product brand:</label>
      <asp:TextBox ID="txtBrand" runat="server" placeHolder="Brand" CssClass="form-control"></asp:TextBox>
    </div>

     <div class="form-group">
      <label>Product model:</label>
      <asp:TextBox ID="txtModel" runat="server" placeHolder="Model" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="form-group">
      <label>Product serial:</label>
      <asp:TextBox ID="txtSerial" runat="server" placeHolder="Serial" CssClass="form-control"></asp:TextBox>
    </div>

     <div class="form-group">
      <label>Product status:</label>
      <asp:DropDownList ID="drpStatus" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Working"></asp:ListItem>
                        <asp:ListItem Value="Taken"></asp:ListItem>
                        <asp:ListItem Value="Discharged"></asp:ListItem>
                        <asp:ListItem Value="Available"></asp:ListItem>
                        <asp:ListItem Value="Not available"></asp:ListItem>
                    </asp:DropDownList>
    </div>

    <%--Botones--%>

    <button id="btnSave" runat="server" class="btn btn-outline-primary" onserverclick="btnSave_Click">Save</button>                  
  </div>
               </div>
          </div>
        </div>
      </div>
             </div>
       
     
  
     





   <%-- footer de la página --%>

<footer class="section footer-classic context-dark bg-image" style="background: #404040;">
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="https://www.facebook.com/endermendoza2405"><img class="brand-logo-light" src="Images/yo.png" alt="" width="140" height="37" srcset=""></a>
                <p>Any questions about the operation of this site can contact me as follows</p>
                <!-- Rights-->
                <p class="rights"><span>©  </span><span class="copyright-year">2020</span><span> </span><span></span><span>. </span><span>All Rights Reserved.</span></p>
              </div>
            </div>
            <div class="col-md-4">
              <h5>Contacts</h5>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>Courthouse, 1/2 block east, El Rosario, Carazo, Nicaragua</dd>
              </dl>
              <dl class="contact-list">
                <dt>email:</dt>
                <dd><a href="mailto:#">endermendoza12@gmail.com</a></dd>
              </dl>
              <dl class="contact-list">
                <dt>phones:</dt>
                <dd><a href="#"></a> <span>tel: 82072291</span> <a href="tel: 82072291"></a>
                </dd>
              </dl>
            </div>
            <div class="col-md-4 col-xl-3">
              <h5>Links</h5>
              <ul class="nav-list">
                <li><a href="#">About</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="#">Pricing</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row no-gutters social-container">
          <div class="col"><a class="social-inner" href="https://www.facebook.com/endermendoza2405"><span class="icon mdi mdi-facebook"></span><span>Facebook</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-instagram"></span><span>instagram</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-twitter"></span><span>twitter</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-youtube-play"></span><span>google</span></a></div>
        </div>
      </footer>






    </form>
</body>
</html>
