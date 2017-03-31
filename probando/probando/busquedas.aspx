<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="busquedas.aspx.cs" Inherits="probando.busquedas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/themes/base/theme.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <title></title>
</head>
<body class="container">
    <form id="form1" runat="server">
        <h4 ><strong style="align-content:center;font:menu; color:blue" ><span class="glyphicon glyphicon-search"></span>Buscar Documentos</strong></h4>
    <div class="navbar-form">
        <h3><strong> <span class="glyphicon glyphicon-glass"></span>Enviado por</strong></h3>
        Nª radicacion:<asp:TextBox runat="server" CssClass="form-control" ></asp:TextBox>
        Asunto:<asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
        Enviado a:


        
    </div>
    </form>
</body>
</html>
