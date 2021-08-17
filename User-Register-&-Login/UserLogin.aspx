<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="UserLogin.aspx.cs" Inherits="LibraryMgmtSystem.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login ELMS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body style="background-image:url('Library.jpeg');background-repeat:no-repeat;background-size:cover;">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
    <div>
    <div align="center" class="container jumbotron bg-light boxshadow" style="width:35%;margin-top:inherit;">
        <form>
            <div class="card-header-pills bg-dark text-white">
                <h2 class="auto-style1">User Login Page</h2>
            </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Username</label>
                    <asp:TextBox ID="txtunamelog" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            <div class="form-group">
                <label class="text-dark" for="passlabel">Password</label>
                    <asp:TextBox ID="txtpasslog" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
            </div>
                <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
            <div>
                <asp:LinkButton ID="lbtnchangepw" runat="server" CssClass="btn btn-link" PostBackUrl="~/ForgotPassword.aspx">Forgot Password</asp:LinkButton>
            </div>
            <div>
                <asp:LinkButton ID="lbtnlogreg" runat="server" CssClass="btn btn-link" PostBackUrl="~/Register.aspx" >Don't Have an Account? Register</asp:LinkButton>
            </div>
        </form>
    </div>
    </div>
    </form>
</body>
</html>
