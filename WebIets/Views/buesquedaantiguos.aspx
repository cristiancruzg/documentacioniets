<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buesquedaantiguos.aspx.cs" Inherits="Views_buesquedaantiguos" %>

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
  width: 15%;
}
#contenido {
  float: left;
  width: 85%;
}
#pie {
  clear: both;
}
    </style>
</head>
<body>
    <form id="form1" class="contenedor" runat="server">
    <div class="form-group">
        <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                        <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                    </ul>
                </div>
            </nav>    
    </div> <%--encabezado--%>
        <div class="col-sm-6 col-md-6">
              <div class="contenido">
             <h4 style="margin-left: 25px">Consulta de radicaciones</h4>

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
