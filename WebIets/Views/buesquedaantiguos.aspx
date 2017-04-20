﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buesquedaantiguos.aspx.cs" Inherits="Views_buesquedaantiguos" %>

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
                        
          <li><a href="">Asunto</a></li>
          <li><a href="">Enviado a</a></li>
          <li><a href="">Dirigido  a</a></li>
        </ul>
                </nav>
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
