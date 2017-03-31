<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="GestionDoc.vistas.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        .texbox {
            border: 1px  solid #0094ff;
            -webkit-border-radius: 30px;
               }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                    <asp:LinkButton ID="lnkHome" runat="server"><asp:image src="../Img/IETS.jpg" runat="server" Width="150"></asp:image></asp:LinkButton>
                
                </ul>
            </div>
            <ul class="nav navbar-nav navbar-right" style="padding-right: 50px; padding-top: 5px" runat="server" id="ulusuario" visible="false">
                <asp:Image ID="Image1" runat="server" ImageUrl="../Img/iconUser.png" />
                <asp:Label ID="lblLogin" runat="server" Text=""></asp:Label>
                <asp:LinkButton ID="btnCerrarSesion" runat="server"> |  Cerrar sesión</asp:LinkButton>
            </ul>
        </nav>
   <div class="container">

            <h2>Sistema de Gestión Correspondencia</h2>
            <div class="row">
                                  
                        <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">Inicie sesión</div>
                        <div class="row" style="padding-left: 15px">
                            <div class="col-lg-8">
                                <div class="form-group">
                                    <asp:Label ID="lblNombre" runat="server" Text="Usuario:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="tbxUsuario" runat="server" class="texbox" ></asp:TextBox>
                                    <div class="col-lg-6">
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:GridView ID="dtdatos" runat="server">
                                    </asp:GridView>
                                         </div>                              <br />
                                    <asp:Label ID="lblClave" runat="server" Text="Contraseña:" ></asp:Label>
                                    <br />
                                    <asp:TextBox ID="tbxClave" runat="server" TextMode="password" class="texbox" Visible="false"  ></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Button ID="btValidar" runat="server" Text="Entrar" CssClass=" btn btn-primary" OnClick="btValidar_Click" />

                                </div>

                                <br />
                           <div class="thumbnail" style="width:160px;border-color:white">
                                <button type="button" class="btn btn-primary" id="btnsolicitud" style="width: 150px" runat="server" visible="true" >
                                                                <b>Solicitar acceso</b></button>
                                    
                                                                   <br /> </div>  </div>
                            <div class="col-lg-6">
                               
                                   <asp:Label ID="lblmsj" runat="server" Text="Escriba un mensaje para solicitar acceso:"></asp:Label>
                                   <br /><br />
                                   <asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label>
                                    <asp:TextBox ID="tbxMensaje" runat="server" TextMode="MultiLine" Width="200" Height="120"></asp:TextBox>
                                    <br />
                                    <button type="button" class="btn btn-primary" id="btnEnviar" style="width: 195px" runat="server">
                                                                <b>Enviar</b></button>
                                   <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
                                </div>
                           
                        </div>


                    </div>
                </div>
                
               
            
                </div>
               
        </div>
    </form>
</body>
</html>
