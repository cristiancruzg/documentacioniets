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
#Asunto { 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}

#fecha { 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#radicado { 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#enviado_a { 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#dirigido_a { 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
 /*evento de label etiqueta*/
#Asunto:target {
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
/*evento de label etiqueta*/
#enviado_a:target {
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
/*evento de label etiqueta*/
#dirigido_a:target {
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
 /*evento de label etiqueta*/
#radicado:target {
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
/*evento de label etiqueta*/
#fecha:target {
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
          <li><a href="#radicado">N° Radicado</a></li>
          <li><a href="#fecha" class="popup-link">Fecha</a> </li>                          
                               
          <li><a href="#Asunto" class="popup-link">Asunto</a></li>
          <li><a href="#enviado_a">Enviado a</a></li>
          <li><a href="#dirigido_a">Dirigido  a</a></li>
         </ul>
              
                </nav>
                <%--creando ventanas modales para buscar x cada campo--%>     
                    <div>
                    <div class="modal-wrapper" id="Asunto">
                    <div class="popup-contenedor">
                        <h2>buscar por Asuntos </h2>
                        <p>en este punto podra buscar por palabras relacionadas en el asunto del radicado</p>
                        <asp:TextBox ID="txtasunto" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btnbuscar" runat="server" Text="Buscar" CssClass=" btn btn-primary" />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div>
                <div class="modal-wrapper" id="enviado_a">
                    <div class="popup-contenedor">
                        <h2>buscar por " a quien se envio" </h2>
                        <p>en este punto podra buscar por palabras relacionadas a las entidades o personas que se envio</p>
                        <asp:TextBox ID="txtenviado" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btnenviado" runat="server" Text="Buscar" CssClass=" btn btn-primary" />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div>
                <div class="modal-wrapper" id="dirigido_a">
                    <div class="popup-contenedor">
                        <h2>buscar por la persona "A quien  llego el radicado" </h2>
                        <p>en este punto podra buscar por palabras relacionadas  con el funcionario a quien fue dirigido el documento</p>
                        <asp:TextBox ID="txtdirigido" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btndirigido" runat="server" Text="Buscar" CssClass=" btn btn-primary" />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div>
                 <div class="modal-wrapper" id="fecha">
                    <div class="popup-contenedor">
                        <h2>buscar por Fechas </h2>
                        <p>en este punto podra buscar por fechas relacionadas en el asunto del radicado</p>
                      desde:  <asp:TextBox ID="txtinicial" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                      hasta:    <asp:TextBox ID="txtfinal" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:Button ID="btnfecha" runat="server" Text="Buscar" CssClass=" btn btn-primary" />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div> 
                 <div class="modal-wrapper" id="radicado">
                    <div class="popup-contenedor">
                        <h2>buscar por Numero De Radicado </h2>
                        <p>en este punto podra buscar por el consecutivo relacionado en el Radicado</p>
                      <asp:TextBox ID="txtradicado" runat="server" CssClass="form-control"></asp:TextBox>
                    
                        <asp:Button ID="Btnradicado" runat="server" Text="Buscar" CssClass=" btn btn-primary" />
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
