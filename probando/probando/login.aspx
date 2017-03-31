<%@ Page Language="C#" AutoEventWireup="true" EnableSessionState="True" CodeBehind="login.aspx.cs" Inherits="probando.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="dist/sweetalert.min.js"></script>
    <script src="bower_components/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="bower_components/sweetalert/dist/sweetalert.css"/>
<link rel="stylesheet" type="text/css" href="dist/sweetalert.css"/>
    <link rel="stylesheet" href="dist/sweetalert.css"/>
<link rel="stylesheet" href="themes/twitter/twitter.css"/>
    <title></title>
   
    <style>
        .form-signin
{
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
}
.form-signin .form-signin-heading, .form-signin .checkbox
{
    margin-bottom: 10px;
}
.form-signin .checkbox
{
    font-weight: normal;
}
.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
    margin-top: 20px;
    padding: 40px 0px 20px 0px;
    background-color: #f7f7f7;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
.login-title
{
    color: #555;
    font-size: 18px;
    font-weight: 400;
    display: block;
}
.profile-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.need-help
{
    margin-top: 10px;
}
.new-account
{
    display: block;
    margin-top: 10px;
}
    </style>
</head>
<body>
    <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">GESTION DOCUMENTAL</h1>
            <div class="account-wall">
                <!--<img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"  alt=""/>-->
               <!-- <img  class="profile-img" src="images/IETS.jpg" alt="logo iets" width="10px" />-->
                <img class="profile-img" src="images/IETS2.jpg" alt="logoiets" />
                <form class="form-signin" runat="server">
                    <div>
                        <asp:TextBox CssClass="form-control" ID="txtusuario" runat="server" placeholder="usuario" ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="nombrereq" ControlToValidate="txtusuario" ErrorMessage="llene el campo" CssClass="alert-info" ></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox CssClass="form-control" ID="txtpass" runat="server" placeholder="pass" type="password"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="passrequer" ControlToValidate="txtpass" ErrorMessage="llene el campo" CssClass="alert-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  
                               
                <asp:Button  class="btn btn-lg btn-primary " id="btningresar" type="submit" runat="server" Text="ingresar" OnClick="btningresar_Click" ></asp:Button>
                    
                   
                
                <a href="#" class="pull-right need-help">NECESITA AYUDA? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="#" class="text-center new-account">CONTACTA A ADMIN </a>
        </div>
    </div>
</div>
</body>
</html>
