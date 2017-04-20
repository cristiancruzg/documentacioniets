<%@ Page Language="C#" AutoEventWireup="true" CodeFile="busquedaantiguos.aspx.cs" Inherits="Views_buesquedaantiguos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />

    <title> radicados antiguos</title>
    <style>
             /*mi estilo*/
       #contenedor {
}
#cabecera {
}
#menu {
  float: left;
  width: 20%;
}
#contenido {
  float: left;
  width: 85%;
}
#pie {
  clear: both;
}
ul{
  list-style: none;
}
#menu li>a{
  background-color: grey;
  color: white;
  text-decoration: none;
    display: block;
  text-decoration: none;
  min-width: 100px;
}
#menu li>a:hover{
  color: #000;
  background-color: #eaeaea;
}#menu>li{
  float: left;
  text-align:center
}
#menu>li>ul{
  display: none;
}
#menu>li:hover>ul {
  display:block;
}
/*codigo ventana modal*/
#popup {
   visibility: hidden;
   opacity: 0;
   margin-top: -300px;
}
 
#popup:target {
   visibility:visible;
   opacity: 1;
   background-color: rgba(0,0,0,0.8);
   position: fixed;
   top:0;
   left:0;
   right:0;
   bottom:0;
   margin:0;
   z-index: 999;
   -webkit-transition:all 1s;
   -moz-transition:all 1s;
   transition:all 1s;
}
.popup-contenedor {
   position: relative;
   margin:7% auto;
   padding:30px 50px;
   background-color: #fafafa;
   color:#333;
   border-radius: 3px;
   width:50%;
}
a.popup-cerrar {
   position: absolute;
   top:3px;
   right:3px;
   background-color: #333;
   padding:7px 10px;
   font-size: 20px;
   text-decoration: none;
   line-height: 1;
   color:#fff;
}
    </style>
</head>
<body>
    <form id="form1" class="contenedor" runat="server">
    <div class="cabecera">
        <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                        <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                    </ul>
                </div>
            </nav>    
    </div> <%--encabezado--%>
        <div class="col-sm-6 col-md-6">
             <h4 style="margin-left: 25px">Consulta de radicaciones</h4>
            <div class="menu"><%-- menu de pagina--%>
                <h5><strong>buscar por</strong></h5>
                <nav>
                     <ul id="menu">
          <li><a href="">N° Radicado</a></li>
          <li><a href="">Fecha</a>
                             <ul>
                             <li><a href="">Año</a></li>
                            </ul>
          </li>
                        
          <li><a href="#popup" class="popup-link">Asunto</a></li>
          <li><a href="">Enviado a</a></li>
          <li><a href="">Dirigido  a</a></li>
        </ul>
                    
                </nav>
                <%--creando ventana modal--%>
                <div class="modal-wrapper" id="popup">
                    <div class="popup-contenedor">
                        <h2>buscar por Asuntos </h2>
                        <p>en este punt podra buscar por palabras relacionadas en el asunto del radicado</p>
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div>
            </div>

              <div class="contenido">
            

                         <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" >
                             <AlternatingRowStyle BackColor="White" />
                             <EditRowStyle BackColor="#2461BF" />
                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <PagerSettings Mode="NumericFirstLast" />
                             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#EFF3FB" />
                             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#F5F7FB" />
                             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                             <SortedDescendingCellStyle BackColor="#E9EBEF" />
                             <SortedDescendingHeaderStyle BackColor="#4870BE" />


                           </asp:GridView>

        </div><%--cuerpo de pagina--%>

        </div>
      
    </form>
    
</body>
</html>
