<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buscar.aspx.cs" Inherits="busqueda.buscar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <title></title>
</head>
<body >
    <form id="form1" runat="server" class="container" >

    <div align="center"  class="col-lg-8 " >
        Buscar por: radicado salida <asp:TextBox runat="server" ID="txtnumero" CssClass="form-control" OnTextChanged="Unnamed1_TextChanged" ></asp:TextBox>
       
        <br />
        <br />
        Buscar por: radicado entrada<br />
        <asp:TextBox ID="txtentrada" runat="server" CssClass="form-control" OnTextChanged="txtentrada_TextChanged"></asp:TextBox>
       
       <br />
         Fecha<br />
&nbsp;desde<asp:TextBox runat="server" TextMode="Date" CssClass="form-group"></asp:TextBox><span class="glyphicon glyphicon-calendar" ></span> hasta<asp:TextBox runat="server" TextMode="Date" CssClass="form-group"></asp:TextBox><span class="glyphicon glyphicon-calendar" ></span>
    <br />
        <asp:Button  runat="server" CssClass="btn btn-primary" Text="buscar" ID="btnbuscar2" />

        <br />
        <br />
        <asp:GridView ID="gdbusqueda" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  PageSize="30"  OnSelectedIndexChanging="gdbusqueda_SelectedIndexChanging" OnPageIndexChanging="gdbusqueda_PageIndexChanging"  >
            <EditRowStyle BorderStyle="Solid" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerSettings Mode="NextPreviousFirstLast" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" BorderStyle="Solid" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />

    </div>
    </form>
</body>
</html>
