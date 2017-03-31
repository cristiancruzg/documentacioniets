<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <style>
        body {
            overflow-x: hidden;
        }
    </style>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                    <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                </ul>
            </div>
        </nav>
        <asp:Panel ID="Panel1" runat="server">
            <div class="col-lg-8">
                <div class="panel-group">
                    <div class="panel panel-default" runat="server">
                        <div class="panel-heading">Administración </div>
                        <div class="row" style="padding-left: 15px">
                            <div class="col-sm-12">
                                <br />
                                <ul class="nav nav-tabs">
                                    <li><a href="../Views/ViewUsuario.aspx">Usuarios</a></li>
                                    <li><a href="../Views/ViewUsuExt.aspx">Usuarios Externos</a></li>
                                    <li><a href="../Views/ViewDependencia.aspx">Dependencias</a></li>
                                    <li><a href="../Views/ViewTipoDoc.aspx">Tipos de documento</a></li>
                                    <li><a href="../Views/ViewAnexo.aspx">Anexos</a></li>
                                    <li><a href="../Views/ViewRadicacion.aspx">Radicación salida</a></li>
                                    <li><a href="../Views/ViewConsultaRadicados.aspx">Consultar radicados</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>

    </form>
</body>
</html>
