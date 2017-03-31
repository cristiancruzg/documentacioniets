<%@ Page Language="C#" AutoEventWireup="true" EnableSessionState="True" CodeBehind="Radicacion.aspx.cs" Inherits="probando.Radicacion" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <!--  <script src="Scripts/jquery-migrate-1.4.1.min.js"></script>-->
    <script src="Scripts/jquery.validate.js"></script>
    <script src="javascripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <!--<script src="Scripts/jquery-migrate-1.4.1.js"></script>-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <title>Radicacion</title>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap-datepicker.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#regdata').datepicker({
                format: "dd/mm/yy",
                autoclose: true,
                todayHighlight: true
            });
        });

    </script>

    <style type="text/css">
        .form-group-sm {
            width: 464px;
        }
    </style>
    

   

</head>

<body>



    <form id="form1" runat="server" method="post">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px" visible="true">
                    <li>&nbsp;</li>
                    <asp:LinkButton ID="lnkHome" runat="server"><asp:image src="images/IETS.jpg" Width="150px" runat="server" ></asp:image></asp:LinkButton>
                    <%--<li><a href="#" runat="server">Sistema de Gestión Radicacion</a></li>--%>
                </ul>
            </div>
            <img src="images/iconUser.png" width="50px" />
            <ul class="nav navbar-nav navbar-right" style="padding-right: 50px; padding-top: 5px" runat="server" id="ulusuario" visible="true">

                <asp:Label ID="lblLogin" runat="server" Text=""></asp:Label>
                <asp:LinkButton ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click"> |  Cerrar sesión</asp:LinkButton>
            </ul>
        </nav>

        <div style="text-align: center; width: 400px; padding: 1em 0;">
            <h2><a style="text-decoration: none;" href="http://www.zeitverschiebung.net/es/city/3688689"><span style="color: gray;">Hora actual </span>
                <br />
                Bogotá, Colombia</a></h2>
            <iframe src="https://www.zeitverschiebung.net/clock-widget-iframe-v2?language=es&timezone=America%2FBogota" width="100%" height="150" frameborder="0" seamless></iframe>
            <small style="color: gray;">&copy; <a href="http://www.zeitverschiebung.net/es/" style="color: gray;">Diferencia horaria</a></small>
        </div>

        <div class="container ">
            <div class="panel panel-primary">
                <!--inicio panel -->
                <div class="panel panel-heading">
                    <h3 class="panel-title"><strong>RADICACION IETS. </strong>
                        <img src="images/1490210636_file.png" /></h3>
                </div>
                <div class="panel-body">
                    <div class="table-bordered">
                        <div class="col-sm-4">
                            <div class="form-group-sm">
                                <img src="images/IETS.jpg" width="150px" />
                                <h3 class="center-block"><strong>ENTRADA</strong></h3>
                                <!--casillas del formulario  -->

                                <div class="form-group">
                                    fecha de radicacion:
                                    <input class="form-control" type="text" id="regdata" name="calendario" />
                                    asunto
                                    <input class="form-control" type="text" name="asunto" />
                                    nit/cedula: 
                                    <input class="form-control" type="text" name="numerodoc" />
                                    nombre institucion<input class="form-control" type="text" name="empresa" />
                                    nombre funcionario<input class="form-control" type="text" name="funcionario" />
                                    tipo de documento<input class="form-control" type="text" name="tipodoc" />
                                    folios<input class="form-control" />
                                    tipo de anexo<input class="form-control" />
                                    cantidad de anexos<input class="form-control" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                               <asp:TextBox CssClass="form-control" ID="regdata1" runat="server" TextMode="Date " ></asp:TextBox>






                                </div>

                            </div>

                        </div>


                        <asp:GridView ID="GridView1" CssClass="table-responsive" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_TIPO_DOC" DataSourceID="SqlDataSource2" Width="332px" Height="520px" HorizontalAlign="Right" PageSize="20">
                            <Columns>
                                <asp:BoundField DataField="ID_TIPO_DOC" HeaderText="numero" InsertVisible="False" ReadOnly="True" SortExpression="ID_TIPO_DOC" />
                                <asp:TemplateField HeaderText="NOMBRE ANEXOS" SortExpression="NOMBRE_TIPO_DOC">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOMBRE_TIPO_DOC") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOMBRE_TIPO_DOC") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="#66CCFF" />
                            <PagerStyle BackColor="#66CCFF" BorderColor="White" BorderStyle="Inset" />
                        </asp:GridView>
                    </div>
                </div>

            </div>
            <div class="table">

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GCConnectionString %>" SelectCommand="SELECT [ID_TIPO_DOC], [NOMBRE_TIPO_DOC] FROM [TIPO_DOCUMENTOS]"></asp:SqlDataSource>

            </div>

        </div>
    </form>
    <script type="text/javascript">
        document.execCommand('ClearAuthenticationCache');

    </script>
</body>
</html>
