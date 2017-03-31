<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDependencia.aspx.cs" Inherits="Views_ViewDependencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Dependencias</title>
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="../Scripts/validacion.js"></script>
    <link href="../Content/css/estilo.css" rel="stylesheet" />
</head>
<body>
     <style>
        body {overflow-x: hidden; overflow-y: hidden; font-family:"Trebuchet MS", Helvetica, sans-serif}
         .validador {padding:10px;font-weight:bold;}
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

            <h2 style="margin-left: 200px">Gestión de Dependencias</h2>
            <div class="container">
                <div class="col-sm-6 col-md-6">
                <div class="thumbnail" contenteditable="inherit">
                    <!--Thumbnail Dependencia-->
                    <br />
                    <label for="inputType" class="col-md-5 control-label">Nombre de Dependencia:</label>
                    <%-- Campo Text Box, llamando la funciona de validación de tipo de dato --%>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtNombreDependencia" onkeypress="return soloLetras(event);" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <%-- Botón para agregar elementos--%>
                        <asp:Button ID="btnAddDep" runat="server" Text="Agregar" CssClass="form-control btn btn btn-primary" OnClick="btnAdd_Click" Width="100px" />
                    </div>
                    <br />
                    <br />
                     <%-- Valida campo vacios y que el registro se ha insertado de manera correcta--%>
                        <div class="validador" style="color: red">
                            <asp:Label ID="lblValida" runat="server" Text=""></asp:Label>
                        </div>
                    <%-- Grilla con los eventos que se van a ejecutar --%>
                    <asp:GridView ID="gvDep" CssClass="table table-bordered" runat="server"
                        OnRowCancelingEdit="rowCancelEditEvent"
                        OnRowDeleting="rowDeletingEvent"
                        OnRowEditing="rowEditingEvent"
                        OnRowUpdating="rowUpdatingEvent" 
                        AutoGenerateColumns="False"
                        DataKeyNames="ID_DEPENDENCIA" 
                        AllowPaging="True" 
                        OnPageIndexChanging="gvDep_PageIndexChanging" 
                        Font-Size="Small" 
                        PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                    
                            <asp:TemplateField HeaderText="Código" HeaderStyle-CssClass="text-center">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<% # Bind("ID_DEPENDENCIA") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:label ID="txtId" runat="server" Text='<% # Bind("ID_DEPENDENCIA") %>'></asp:label>
                            </EditItemTemplate>

<HeaderStyle CssClass="text-center"></HeaderStyle>
                        </asp:TemplateField>

                            <asp:TemplateField HeaderText="Nombre dependencia" HeaderStyle-CssClass="text-center">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<% # Bind("NOMBRE_DEPENDENCIA") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtNombreDependencia" runat="server" onkeypress="return soloLetras(event);" Text='<% # Bind("NOMBRE_DEPENDENCIA") %>'></asp:TextBox>
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
                                    <ItemTemplate >
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
