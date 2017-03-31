<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewUsuario.aspx.cs" Inherits="Views_ViewUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Usuarios</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="../Scripts/validacion.js"></script>
    <link href="../Content/css/estilo.css" rel="stylesheet" />
</head>
<body>
    <style>
        body {overflow-x: hidden; font-family:"Trebuchet MS", Helvetica, sans-serif}
        .validador { padding: 10px; font-weight: bold;}
        .thumbnail {width:130%;}
        .table {text-align:center;}
    </style>
    <form id="form1" runat="server">
        <div class="form-group">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <ul class="nav navbar-nav navbar-left" style="padding-left: 160px; padding-top: 5px">
                        <asp:Image src="../images/logo.png" runat="server" Width="250"></asp:Image>
                    </ul>
                </div>
            </nav>

            <h2 style="margin-left: 200px">Gestión de Usuarios</h2>
            <div class="container">
                <div class="col-sm-6 col-md-6">
                    <!--thumbnail Usuarios-->
                    <div class="thumbnail" contenteditable="inherit">
                        <br />
                        <%-- Campos propios de la tabla Usuarios --%>
                        <label for="inputType" class="col-md-4 control-label">Nombre de Usuario:</label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtNombreUsuario" runat="server" onkeypress="return soloLetras(event);"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <label for="inputType" class="col-md-4 control-label">Estado:</label>
                        <div class="col-md-1">
                            <asp:CheckBox ID="checkEstado" runat="server" />
                        </div>
                        <%-- Campo de la tabla Tipo de anexo--%>
                        <label for="inputType" class="col-md-3 control-label">Tipo de acceso:</label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="cmbTipoAcceso" runat="server"></asp:DropDownList>
                        </div>
                        <br />
                        <%-- Valida campo vacios y que el registro se ha insertado de manera correcta--%>
                        <div class="validador">
                            <asp:Label ID="lblValida" runat="server" Text=""></asp:Label>
                        </div>
                        <%-- Botón para agregar elementos--%>
                        <div class="col-md-1">
                            <asp:Button ID="btnAddUser" Width="100px" runat="server" Text="Agregar" CssClass="btn btn btn-primary" OnClick="btnAddUser_Click" />
                        </div>
                        <br />
                        <br />
                        <br />

                        <asp:GridView ID="gvUsuarios" CssClass="table table-bordered" runat="server"
                            OnRowCancelingEdit="RowCancelingEvent"
                            OnRowDeleting="RowDeletingEvent"
                            OnRowEditing="RowEditingEvent"
                            OnRowUpdating="RowUpdatingEvent"
                            AutoGenerateColumns="False"
                            DataKeyNames="ID_USUARIO"
                            Font-Size="Small"
                            OnRowDataBound="RowDataboundEvent" AllowPaging="True" 
                            OnPageIndexChanging="gvUsuarios_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Código" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl1" runat="server" Text='<% # Bind("ID_USUARIO") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl2" runat="server" Text='<% # Bind("ID_USUARIO") %>'></asp:Label>
                                    </EditItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Nombre de usuario" HeaderStyle-CssClass="text-center" >
                                    <ItemTemplate>
                                        <asp:Label ID="lbl3" runat="server" Text='<% # Bind("NOMBRE") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtNombreUsuario" runat="server" onkeypress="return soloLetras(event);" Text='<% # Bind("NOMBRE") %>'></asp:TextBox>
                                    </EditItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Estado" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:Label ID="chk1" Text='<%# Eval("Estado").ToString() == "False" ? "Inactivo" : "Activo" %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="chk2" runat="server" Text='<%# Eval("Estado").ToString() == "False" ? "Activo" : "Inactivo" %>'></asp:CheckBox>
                                    </EditItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Perfil" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl5" runat="server" Text='<% # Bind("TIPO_ACCESO.NOMBRE_TIPO_ACCESO") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="cmbTa" runat="server"></asp:DropDownList>
                                    </EditItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>
                                </asp:TemplateField>

                                <%-- Botones de eliminar y editar --%>
                                <asp:CommandField ButtonType="Image" EditImageUrl="~/images/edit.png"
                                    UpdateImageUrl="~/images/check.png" CancelImageUrl="~/images/error.png"
                                    ShowEditButton="true" ShowDeleteButton="false" HeaderText="Editar" HeaderStyle-CssClass="text-center" >

<HeaderStyle CssClass="text-center"></HeaderStyle>
                                </asp:CommandField>

                                <asp:TemplateField ShowHeader="False" HeaderText="Eliminar" HeaderStyle-CssClass="text-center">
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
        </div>
    </form>
</body>
</html>
