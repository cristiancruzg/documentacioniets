<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radicarentrada.aspx.cs" Inherits="GestionDoc.vistas.radicarentrada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                    <asp:LinkButton ID="lnkHome" runat="server"><asp:image src="../Img/IETS.jpg" runat="server" Width="150"></asp:image></asp:LinkButton>
                    <%--<li><a href="~/index.aspx" runat="server">Sistema de Gestión Documental</a></li>--%>
                </ul>
            </div>


            <ul class="nav navbar-nav navbar-right" style="padding-right: 50px; padding-top: 5px" runat="server" id="ulusuario" visible="false">
                <asp:Image ID="Image1" runat="server" ImageUrl="../Img/iconUser.png" />
                <asp:Label ID="lblLogin" runat="server" Text=""></asp:Label>
                <asp:LinkButton ID="btnCerrarSesion" runat="server"> |  Cerrar sesión</asp:LinkButton>
            </ul>
   
        </nav>
         <h2>RADICADOS ENTRADA</h2>
        <div class="panel panel-default">
            <div class="row" style="padding-top:15px; height: 123px;"> 
                <div class="col-sm-12"><br />
                    <ul class="nav nav-tabs">
                           <li><a href="#">nuevo entrada</a></li>
                        <li><a href="#">buscar entrada</a></li>
                           <li>
                               <asp:Button ID="Btnguardaradicado" runat="server" Text="guardar" />
                           </li>
                    </ul>
                
        <p>&nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ID_TIPO_DOC">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID_TIPO_DOC" HeaderText="ID_TIPO_DOC" SortExpression="ID_TIPO_DOC" InsertVisible="False" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="NOMBRE_TIPO_DOC" HeaderText="NOMBRE_TIPO_DOC" SortExpression="NOMBRE_TIPO_DOC" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaseGC %>" SelectCommand="SELECT * FROM [TIPO_DOCUMENTOS] ORDER BY [ID_TIPO_DOC]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [TIPO_DOCUMENTOS] WHERE [ID_TIPO_DOC] = @original_ID_TIPO_DOC AND [NOMBRE_TIPO_DOC] = @original_NOMBRE_TIPO_DOC" InsertCommand="INSERT INTO [TIPO_DOCUMENTOS] ([NOMBRE_TIPO_DOC]) VALUES (@NOMBRE_TIPO_DOC)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [TIPO_DOCUMENTOS] SET [NOMBRE_TIPO_DOC] = @NOMBRE_TIPO_DOC WHERE [ID_TIPO_DOC] = @original_ID_TIPO_DOC AND [NOMBRE_TIPO_DOC] = @original_NOMBRE_TIPO_DOC">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID_TIPO_DOC" Type="Int32" />
                    <asp:Parameter Name="original_NOMBRE_TIPO_DOC" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NOMBRE_TIPO_DOC" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NOMBRE_TIPO_DOC" Type="String" />
                    <asp:Parameter Name="original_ID_TIPO_DOC" Type="Int32" />
                    <asp:Parameter Name="original_NOMBRE_TIPO_DOC" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
                    </div>
            </div>

        </div>
    <div>

    
    </div>
    </form>
</body>
</html>
