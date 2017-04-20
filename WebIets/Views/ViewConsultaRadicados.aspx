<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewConsultaRadicados.aspx.cs" Inherits="Views_ViewConsultaRadicados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Radicacion correspondencia de salida</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link href="../Content/css/estilo.css" rel="stylesheet" />
    <script src="../Scripts/validacion.js"></script>
   

</head>
<body>
    <style>
        body {overflow-x: hidden;font-family: "Trebuchet MS", Helvetica, sans-serif;}
        .table {text-align: center;}
        .thumbnail {margin-left:-23%;width:250%;}
  
    </style>
    
    <form class="contenedor" id="form1" runat="server">
       
        <div class="form-group">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                        <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                    </ul>
                </div>
            </nav>
            <div class="container">
                <div class="col-sm-6 col-md-6">
                    <!--thumbnail Anexo-->
                    <div class="contenido" contenteditable="inherit">
           

            <asp:GridView ID="gvradica" CssClass="table table-bordered" runat="server"
                AutoGenerateColumns="False" DataKeyNames="ID_RADICACION" Font-Size="X-Small" AllowPaging="True"
                OnPageIndexChanging="Paginacion" PageSize="20" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Radicado" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl1" runat="server" Text='<% # Bind("ID_RADICACION") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl2" runat="server" Text='<% # Bind("ID_RADICACION") %>'></asp:Label>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Asunto" HeaderStyle-CssClass="text-center" HeaderStyle-Width="50px">
                        <ItemTemplate>
                            <asp:Label ID="lbl3" runat="server" Text='<% # Bind("ASUNTO") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAsunto" runat="server" onkeypress="return soloLetras(event);" Text='<% # Bind("ASUNTO") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Fecha" HeaderStyle-CssClass="text-center" HeaderStyle-Width="50px">
                        <ItemTemplate>
                            <asp:Label ID="lbl4" runat="server" Text='<% # Bind("FECHA") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFecha" runat="server" Text='<% # Bind("FECHA") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Folios" HeaderStyle-CssClass="text-center" HeaderStyle-Width="20px">
                        <ItemTemplate>
                            <asp:Label ID="lbl6" runat="server" Text='<% # Bind("FOLIOS") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFolios" runat="server" Text='<% # Bind("FOLIOS") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Dependencia" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl7" runat="server" Text='<% # Bind("DEPENDENCIA.NOMBRE_DEPENDENCIA") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="cmbDependencia" runat="server"></asp:DropDownList>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Enviado por:" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl8" runat="server" Text='<% # Bind("USUARIOS.NOMBRE") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="cmbUsuario" runat="server"></asp:DropDownList>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Tipo Documento" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl10" runat="server" Text='<% # Bind("TIPO_DOCUMENTOS.NOMBRE_TIPO_DOC") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="cmbTipoDoc" runat="server"></asp:DropDownList>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Anexo" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl11" runat="server" Text='<% # Bind("ANEXOS.NOMBRE_ANEXO") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="cmbAnexo" runat="server"></asp:DropDownList>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="No Anexos" HeaderStyle-CssClass="text-center" HeaderStyle-Width="50px">
                        <ItemTemplate>
                            <asp:Label ID="lbl12" runat="server" Text='<% # Bind("CANTIDAD_ANEXOS") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCantidadAnexos" runat="server" Text='<% # Bind("CANTIDAD_ANEXOS") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="CC o NIT" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl13" runat="server" Text='<% # Bind("USUARIO_EXTERNO.DOCUMENTO") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDocUsuExt" runat="server" Text='<% # Bind("USUARIO_EXTERNO.DOCUMENTO") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Razón Social" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl14" runat="server" Text='<% # Bind("USUARIO_EXTERNO.NOMBRE") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtNombreUsuExt" runat="server" Text='<% # Bind("USUARIO_EXTERNO.NOMBRE") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Dirigido a" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl15" runat="server" Text='<% # Bind("USUARIO_EXTERNO.PERSONA_ENCARGADA") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPersonaEncargada" runat="server" Text='<% # Bind("USUARIO_EXTERNO.PERSONA_ENCARGADA") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Cargo" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl16" runat="server" Text='<% # Bind("USUARIO_EXTERNO.CARGO") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCargo" runat="server" Text='<% # Bind("USUARIO_EXTERNO.CARGO") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Dirección" HeaderStyle-CssClass="text-center" HeaderStyle-Width="50px">
                        <ItemTemplate>
                            <asp:Label ID="lbl17" runat="server" Text='<% # Bind("USUARIO_EXTERNO.DIRECCION") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDireccion" runat="server" Text='<% # Bind("USUARIO_EXTERNO.DIRECCION") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Teléfono" HeaderStyle-CssClass="text-center">
                        <ItemTemplate>
                            <asp:Label ID="lbl18" runat="server" Text='<% # Bind("USUARIO_EXTERNO.TELEFONO") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTelefono" runat="server" Text='<% # Bind("USUARIO_EXTERNO.TELEFONO") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                    </asp:TemplateField>
                </Columns>
                <%-- Paginación css --%>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerSettings PageButtonCount="5" FirstPageText="First Page" LastPageText="Last Page" />
                <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                
            </asp:GridView>
            <asp:Label ID="alerta" runat="server"> </asp:Label>
        </div></div></div></div>
    </form>
</body>
</html>
