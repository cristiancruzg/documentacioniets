<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inicio.aspx.cs" Inherits="inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sistema Gestión Correspondencia - IETS</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>
    <style>
        body {
            overflow-x: hidden;
            overflow-y: hidden;
        }
    </style>
    <form id="Login" runat="server">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                    <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                </ul>
            </div>
        </nav>
        <h2 style="margin-left: 200px">Gestión Correspondencia IETS</h2>
        <div class="container" style="margin-left: 450px; margin-top: 80px">
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Iniciar sesión</div>
                    <div class="row" style="padding-left: 40px">
                        <div class="col-sm-6">
                            <div class="form-group" style="padding-top: 10px">
                                <asp:Label ID="lblNombre" runat="server" Text="Usuario:"></asp:Label>
                                <asp:TextBox ID="usuario" runat="server"></asp:TextBox>
                                <asp:Label ID="lblClave" runat="server" Text="Contraseña:"></asp:Label>
                                <asp:TextBox ID="clave" runat="server" TextMode="password"></asp:TextBox><br></br>
                                <asp:Button ID="btValidar" runat="server" Text="Entrar" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-default" role="navigation" style="background-color: #ddd; margin-top: 145px">
            <div class="navbar-footer">
                <h6 class="text-muted text-center">Gestión de correspondencia - Copyright © 2017 IETS . Todos los derechos reservados</h6>
            </div>
        </nav>
    </form>
</body>
</html>
