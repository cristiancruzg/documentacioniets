<%@ Page Language="C#" AutoEventWireup="true" CodeFile="busquedaantiguos.aspx.cs" Inherits="Views_buesquedaantiguos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/css/miequipo21.css" rel="stylesheet" />
    <title> radicados antiguos</title>

</head>
<body>
       <form id="form1"  class="container" runat="server">
        
    
         <header style="border:groove blue">
         

        <nav style="padding-left:110px; padding-top: 5px; height: 156px;">
                    <header>         
                        <asp:Image src="../images/logo.png" runat="server" Width="319px" Height="80px"></asp:Image>
               </header>
            </nav>   
              
    </header> 


           
                <div id="menu1" style="border:5px solid #BF00FF;margin-top:47px" >
                    <h4>consulta radicaciones</h4>
               

                    <h5 ><strong >buscar por</strong></h5>
                   <nav>
                             <ul id="menu">
                             <li><a href="">RADICADO SALIDA</a>
                             <ul>
                                  <li><a href="#radicadosalida"class="popup-link">N° Radicado</a></li>
                                  <li><a href="#fechasalida" class="popup-link">Fecha</a> </li>                           
                                  <li><a href="#Asuntosalida" class="popup-link">Asunto</a></li>
                                  <li><a href="#enviado_salida"class="popup-link">Firmado por</a></li>
                                    <li><a href="#Tipo_docsalida"class="popup-link">Tipo de Documento </a></li>
                                 
                             </ul>
                             </li>
                            <li><a href="">RADICADO ENTRADA</a>
                             <ul>
                                  <li><a href="#radicado"class="popup-link">N° Radicado</a></li>
                             <li><a href="#fecha" class="popup-link">Fecha</a> </li>                           
                            <li><a href="#Asunto" class="popup-link">Asunto</a></li>
                            <li><a href="#enviado_a" class="popup-link">Enviado por</a></li>
                            <li><a href="#dirigido_a"class="popup-link">Dirigido A</a></li>
                            <li><a href="#Tipo_doc"class="popup-link">Tipo de Documento </a></li>

                             </ul>
                             </li>


                        </ul>
             </nav>

                </div>
             
                
                
       
               <%--<main id="contenido" style="border:groove red"  margin-left: 409px; top:65px;">--%>
                  <div id="contenido" style="margin-top:auto;">
                  <%-- <section id="main" style="border:groove black; padding-top:5px; margin-left: 453px;">--%>
                       
                    <asp:GridView ID="gvbusquedas" runat="server" Font-Size="Small" CssClass="table table-responsive" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="539px" Height="600px" >
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
                  <%--  </section>--%>
               </div>
        <div id="pie">

        </div>

      <%--  </main>--%>
            
           
           
       
       <%-- diseño de ventanas--%>
         <div style="height: 114px" > 
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
                        <br />
                        <asp:Button ID="btnenviado" runat="server" Text="Buscar" CssClass=" btn btn-primary"  OnClick="btnenviado_Click" />
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
    </form>

    
</body>
</html>
