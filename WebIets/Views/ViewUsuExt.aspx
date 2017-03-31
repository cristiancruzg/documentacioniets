<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewUsuExt.aspx.cs" Inherits="Views_ViewUsuExt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Usuarios Externos</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="../Scripts/validacion.js"></script>
    <link href="../Content/css/estilo.css" rel="stylesheet" />
</head>
<body>
    <style>
        body {overflow-x: hidden;font-family: "Trebuchet MS", Helvetica, sans-serif;}
        .validador {padding: 10px;font-weight: bold;}
        .thumbnail {width: 140%; height:125px;margin-left:60px}
        .container {float: left;width: 877px;}
        .table {float: left;text-align: center;}
        .btnAdd1 {float: right; margin-top:-45px; margin-right:60px}
    </style>
    <form class="form-horizontal" id="form1" runat="server">
        <div class="form-group">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                        <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                    </ul>
                </div>
            </nav>
            <h2 style="margin-left: 200px">Gestión de usuarios Externos</h2>
            <div class="container">
                <div class="thumbnail">
                    <!--Formulario Usuario Externo-->
                    <br />
                    <label for="inputType" class="col-md-1 control-label">Documento:</label>
                    <div class="col-md-2">
                        <%-- Campos Text Box, llamando la funciona de validación de tipo de dato --%>
                        <asp:TextBox ID="txtDocumento" onkeypress="return soloNumeros(event);" runat="server"></asp:TextBox>
                    </div>
                    <label for="inputType" class="col-md-1 control-label">Nombre:</label>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtNombre" onkeypress="return soloLetras(event);" runat="server"></asp:TextBox>
                    </div>
                    <label for="inputType" class="col-md-2 control-label">Persona Encargada:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPersona" onkeypress="return soloLetras(event);" runat="server"></asp:TextBox>
                    </div><br /><br />
                    <label for="inputType" class="col-md-1 control-label">Cargo:</label>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtCargo" onkeypress="return soloLetras(event);" runat="server"></asp:TextBox>
                    </div>
                    <label for="inputType" class="col-md-1 control-label">Dirección:</label>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </div>
                    <label for="inputType" class="col-md-2 control-label">Teléfono:</label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtTelefono" onkeypress="return soloNumeros(event);" runat="server"></asp:TextBox>
                    </div>
                  
                    <%-- Botón para agregar elementos--%>
                    <div class="btnAdd1">
                        <asp:Button ID="btnAdd" runat="server" Text="Agregar" CssClass="form-control btn btn btn-primary" OnClick="btnAdd_Click" Width="100px"  />
                    </div><br />
                      <%-- Valida campo vacios y que el registro se ha insertado de manera correcta--%>
                    <div class="validador" style="color: red">
                        <asp:Label ID="lblValida" runat="server" Text=""></asp:Label>
                    </div><br /><br />
                    <%-- Grilla con los eventos que se van a ejecutar --%>

                    <asp:GridView ID="gvUsuExt" CssClass="table table-bordered" runat="server"
                        OnRowCancelingEdit="rowCancelEditEvent"
                        OnRowDeleting="rowDeletingEvent"
                        OnRowEditing="rowEditingEvent"
                        OnRowUpdating="rowUpdatingEvent"
                        AutoGenerateColumns="False"
                        DataKeyNames="ID_USUARIO_EXT"
                        AllowPaging="True"
                        OnPageIndexChanging="gvUsuExt_PageIndexChanging"
                        Font-Size="Small" CellPadding="4" ForeColor="#333333" GridLines="None">

                        <AlternatingRowStyle BackColor="White" />

                        <Columns>
                            <asp:TemplateField HeaderText="Documento" HeaderStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<% # Bind("DOCUMENTO") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:textbox ID="txtDocumento" runat="server" onkeypress="return soloNumeros(event);" Text='<% # Bind("DOCUMENTO") %>'></asp:textbox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="text-center"></HeaderStyle>
                                <ItemStyle Width="20px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre" HeaderStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<% # Bind("NOMBRE") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtNombre" runat="server" onkeypress="return soloLetras(event);" Text='<% # Bind("NOMBRE") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="text-center"></HeaderStyle>
                                <ItemStyle Width="150px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Persona Encargada" HeaderStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<% # Bind("PERSONA_ENCARGADA") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPersona" runat="server" onkeypress="return soloLetras(event);" Text='<% # Bind("PERSONA_ENCARGADA") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="text-center"></HeaderStyle>
                                <ItemStyle Width="150px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cargo" HeaderStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<% # Bind("CARGO") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCargo" runat="server" onkeypress="return soloLetras(event);" Text='<% # Bind("CARGO") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="text-center"></HeaderStyle>
                                <ItemStyle Width="150px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Dirección" HeaderStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<% # Bind("DIRECCION") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDireccion" runat="server" Text='<% # Bind("DIRECCION") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="text-center"></HeaderStyle>
                                <ItemStyle Width="150px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Teléfono" HeaderStyle-CssClass="text-center"  HeaderStyle-Width="80px">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<% # Bind("TELEFONO") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTelefono" runat="server" onkeypress="return soloNumeros(event);" Text='<% # Bind("TELEFONO") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="text-center"></HeaderStyle>
                                <ItemStyle Width="20px" />
                            </asp:TemplateField>
                            <%-- Botones de eliminar y editar --%>
                            <asp:CommandField ButtonType="Image" EditImageUrl="~/images/edit.png"
                                UpdateImageUrl="~/images/check.png" CancelImageUrl="~/images/error.png"
                                ShowEditButton="true" ShowDeleteButton="false" HeaderText="Editar" HeaderStyle-CssClass="text-center">
                                <HeaderStyle CssClass="text-center"></HeaderStyle>
                                <ItemStyle Width="120px" />
                            </asp:CommandField>

                            <asp:TemplateField ShowHeader="False" HeaderText="Eliminar" HeaderStyle-CssClass="text-center" HeaderStyle-Width="80px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False"
                                        CommandName="Delete" ImageUrl="~/images/delete.png" Text="Delete" OnClientClick="return confirm('Esta seguro que desea eliminar el registro?');" />
                                </ItemTemplate>
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
                </div>
            </div>
        </div>
    </form>
</body>
</html>
