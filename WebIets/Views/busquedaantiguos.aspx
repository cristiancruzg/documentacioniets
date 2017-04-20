<%@ Page Language="C#" AutoEventWireup="true" CodeFile="busquedaantiguos.aspx.cs" Inherits="Views_buesquedaantiguos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />

    <title> radicados antiguos </title>
    <style>
             /*mi estilo*/
       #contenedor {
            width: 700px;
}
#cabecera {
}
#menu1 {
  float: left;
  width: 27%;
  
}
#contenido {
  float: right;
  width: 75%;
}
        #contenido #principal {
            float: right;
            width: 75%;
        }
#pie {
  clear: both;
}
/*estilo menu*/
ul{
  list-style: none;
            width: 268px;
            height: 163px;
        }
#menu li>a{
  background-color: royalblue;
  color: white;
  text-decoration: none;
    display: block;
  text-decoration: none;
  min-width: 50px;
  border:  inset;
}
#menu li>a:hover{
  color: #000;
  background-color: #eaeaea;
  
}#menu>li{
  float: left;
  text-align:center;
  
      

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

#Tipo_docsalida{
     visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;

}
#Tipo_docsalida:target{
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
#enviado_salida{

    visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#enviado_salida:target{

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
#Asuntosalida{

     visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#Asuntosalida:target{

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
#radicadosalida { 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#radicadosalida:target {
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
#fechasalida
{ 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#fechasalida:target{
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

#Asunto { 
   visibility: hidden;
   opacity: 0;                      /*id de la etiqueta*/
   margin-top: -300px;
}
#Tipo_doc { 
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

#Tipo_doc:target {
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
    <form id="form1" class="container" runat="server">
        <%--encabezado--%>
    <div class="cabecera">
        <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                        <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                    </ul>
                </div>
            </nav>    
    </div> 
      <%-- demarcacion y contenido--%> 
        <div class="col-sm-6 col-md-6">
             <h4 style="margin-left: 25px">Consulta de radicaciones</h4>
             
        <%-- menu de pagina--%>
            <div id="menu1">
                <h5><strong>buscar por</strong></h5>
                <nav>
                     <ul id="menu">
                         <li><a href="">RADICADO SALIDA</a>
                             <ul>
                                  <li><a href="#radicadosalida">N° Radicado</a></li>
                                  <li><a href="#fechasalida" class="popup-link">Fecha</a> </li>                           
                                  <li><a href="#Asuntosalida" class="popup-link">Asunto</a></li>
                                  <li><a href="#enviado_salida">Firmado por</a></li>
                                    <li><a href="#Tipo_docsalida">Tipo de Documento </a></li>
                                 
                             </ul>
                             </li>
                          <li><a href="">RADICADO ENTRADA</a>
                             <ul>
                                  <li><a href="#radicado">N° Radicado</a></li>
                             <li><a href="#fecha" class="popup-link">Fecha</a> </li>                           
                            <li><a href="#Asunto" class="popup-link">Asunto</a></li>
                            <li><a href="#enviado_a">Enviado por</a></li>
                           <li><a href="#dirigido_a">Dirigido A</a></li>
                                 <li><a href="#tipo_doc">Tipo de Documento </a></li>

                             </ul>
                             </li>
         
                         <asp:GridView ID="gvbusquedas" runat="server" Font-Size="Small" CssClass="table table-responsive" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" >
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
         
         </ul>
              
                </nav>
          
                   
           <%--creando ventanas modales para buscar x cada campo--%> 
                <div > 
                    <div class="modal-wrapper" id="Asunto">
                    <div class="popup-contenedor">
                        <h2>buscar por Asuntos </h2>
                        <p>en este punto podra buscar por palabras relacionadas en el asunto del radicado</p>
                        <asp:TextBox ID="txtasunto" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btnbuscar" runat="server" Text="Buscar" CssClass=" btn btn-primary" OnClick="btnbuscar_Click"/>
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div>
                     
                    <div class="modal-wrapper" id="Tipo_doc">
                    <div class="popup-contenedor">
                        <h2>buscar por Tipo de documento </h2>
                        <p>en este punto podra buscar por palabras relacionadas con el documento </p>
                        <asp:TextBox ID="txtti_doc" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btntipodoc" runat="server" Text="Buscar" CssClass=" btn btn-primary" />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div>
                <div class="modal-wrapper" id="enviado_a">
                    <div class="popup-contenedor">
                        <h2>buscar por " a quien se envio" </h2>
                        <p>en este punto podra buscar por palabras relacionadas a las entidades o personas que se envio</p>
                        <asp:TextBox ID="txtenviado" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btnenviado" runat="server" Text="Buscar" CssClass=" btn btn-primary"  />
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
                    
                        <asp:Button ID="Btnradicado" runat="server" Text="Buscar" CssClass=" btn btn-primary"  />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div> 
                    <div class="modal-wrapper" id="radicadosalida">
                    <div class="popup-contenedor">
                        <h2>buscar por Numero De Radicado </h2>
                        <p>en este punto podra buscar por el consecutivo relacionado en el Radicado</p>
                      <asp:TextBox ID="txtradsalida" runat="server" CssClass="form-control"></asp:TextBox>
                    
                        <asp:Button ID="btnradsalida" runat="server" Text="Buscar" CssClass=" btn btn-primary"  />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div> 
                    <div class="modal-wrapper" id="Tipo_docsalida">
                    <div class="popup-contenedor">
                        <h2>buscar por Tipo  De Documento </h2>
                        <p>en este punto podra buscar por el tipo de documento relacionado en el Radicado</p>
                      <asp:TextBox ID="txtipsalida" runat="server" CssClass="form-control"></asp:TextBox>
                    
                        <asp:Button ID="btntipsalida" runat="server" Text="Buscar" CssClass=" btn btn-primary"  />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div> 
                    <div class="modal-wrapper" id="Asuntosalida">
                    <div class="popup-contenedor">
                        <h2>buscar por Asunto De Radicado </h2>
                        <p>en este punto podra buscar por el Asunto relacionado en el Radicado</p>
                      <asp:TextBox ID="txtasuntosalida" runat="server" CssClass="form-control"></asp:TextBox>
                    
                        <asp:Button ID="btnasuntosalida" runat="server" Text="Buscar" CssClass=" btn btn-primary" OnClick="btnasuntosalida_Click" />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div> 
                     <div class="modal-wrapper" id="fechasalida">
                    <div class="popup-contenedor">
                        <h2>buscar por Fecha de salida De Radicado </h2>
                        <p>en este punto podra buscar por la fecha del  Radicado</p>
                       desde:  <asp:TextBox ID="txtiniciosalida" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                      hasta:    <asp:TextBox ID="txfinalsalida" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass=" btn btn-primary" />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div> 
                     <div class="modal-wrapper" id="enviado_salida">
                    <div class="popup-contenedor">
                        <h2>buscar por funcionario De Radicado </h2>
                        <p>en este punto podra buscar por el funcionario que firma Radicado</p>
                      <asp:TextBox ID="txtfirma" runat="server" CssClass="form-control"></asp:TextBox>
                    
                        <asp:Button ID="btnfirma" runat="server" Text="Buscar" CssClass=" btn btn-primary"  />
                        <a class="popup-cerrar"  href="#">X</a>

                    </div>
                    </div> 
            </div>
                 
            </div>

            <%--cuerpo de pagina--%>
              
            
        </div>

        </div>
           
      
    </form>
    
</body>
</html>
