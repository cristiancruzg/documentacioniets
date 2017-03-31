<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GestionDoc.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
   
  
    
     <title></title>
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body class="container">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <form id="form1" runat="server">
          <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                    <asp:LinkButton ID="lnkHome" runat="server"><asp:image src="../Img/IETS.jpg" runat="server" Width="150"></asp:image></asp:LinkButton>
                    <%--<li><a href="~/index.aspx" runat="server">Sistema de Gestión Documental</a></li>--%>
                </ul>
            </div>


            <ul class="nav navbar-nav navbar-right" style="padding-right: 50px; padding-top: 5px" runat="server" id="ulusuario" visible="true">
                <asp:Image ID="Image1" runat="server" ImageUrl="../Img/iconUser.png" />
                <asp:Label ID="lblLogin" runat="server" Text=""></asp:Label>
                <asp:LinkButton ID="btnCerrarSesion" runat="server"> |  Cerrar sesión</asp:LinkButton>
            </ul>
   
        </nav>

         <h2>Sistema de Gestión Correspondencia</h2>
            <div class="row">
                <div class="col-lg-4" style="border-bottom: thin solid white; overflow: auto; top: 2px; left: 4px; height: 447px; border-left-width: thin; border-right-width: thin; border-top-width: thin;">
                    <div class="panel panel-default">
                        <div class="panel-heading">Explorador</div>
                        <div class="panel-body">
                             
                               <asp:Button ID="btnbuscar" runat="server" Text="Buscar" class="btn-primary" />
                            <div   class="panel panel-default">
                                <div class=" panel-heading">HERRAMIENTAS</div>
                                <div class="row" style="padding-left:15px"  >
                                    <div class=" col-sm-12"><br/>
                                        <ul class="nav nav-tabs">
                                           
                                        <li><a href="#">RADICAR ENTRADA </a> </li>
                                            <li><a href="#">RADICAR SALIDA </a> </li>

                                            <li><a href="#">BUSCAR RADICADO</a></li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">OPCIONES <b class="caret"> </b></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">crear tipo de tipo documento</a></li>
                                                    <li><a href="#"> crear funcionario externo</a> </li>
                                                    <li><a href="#"> crear tipo anexo</a> </li>
                                                </ul>
                                            </li>                                      
                                        </ul> 


                                            
                                    </div>


                                </div>



                            </div>
                        </div>
                    </div>
                </div>
      
    </form>
</body>
</html>
