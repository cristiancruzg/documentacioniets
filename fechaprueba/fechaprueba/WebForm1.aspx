<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="fechaprueba.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <script src="javascripts/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
   <%--<script type="text/javascript">
       <!--funcion para la fecha-->
        $(document).ready(function () {
            $('#regdata').datepicker({
                format: "dd/mm/yy",
                autoclose: true,
                todayHighlight: true
            });
        });

    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- texbox y linea de no se aceptan vacios-->
        <acronym title="mause">
             <asp:TextBox ID="regdata" runat="server" TextMode="Date"   CssClass=" form-control"></asp:TextBox>
        </acronym>
       
        <asp:RequiredFieldValidator id="reqfecha" runat="server" ControlToValidate="regdata" ErrorMessage="debe ingresar la fecha" BackColor="Red" ></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
        <div>
            <!--codigo para el boton  -->
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

        </div>
    </form>
</body>
</html>
