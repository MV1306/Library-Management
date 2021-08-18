<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" EnableEventValidation="false" Inherits="LibraryManagementSys.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body style="background-image:url('Login.jpeg');background-repeat:no-repeat;background-size:cover;">
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
                    <asp:TextBox ID="txtunamelog" runat="server" CssClass="form-control" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Required" ControlToValidate="txtunamelog" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            <div class="form-group">
                <label class="text-dark" for="passlabel">Password</label>
                    <asp:TextBox ID="txtpasslog" runat="server" CssClass="form-control" TextMode="Password" Width="80%" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="txtpasslog" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
                <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
            <div>
                <asp:LinkButton ID="lbtnchangepw" runat="server" CssClass="btn btn-link" PostBackUrl="~/ForgotPassword.aspx" CausesValidation="False">Forgot Password</asp:LinkButton>
            </div>
            <div>
                <asp:LinkButton ID="lbtnlogreg" runat="server" CssClass="btn btn-link" PostBackUrl="~/Register.aspx" CausesValidation="False" >Don't Have an Account? Register</asp:LinkButton>
            </div>
            <div>
                <asp:LinkButton ID="lbtnadminlogin" runat="server" CssClass="btn btn-link" CausesValidation="False">Admin Login</asp:LinkButton>
            </div>
        </form>
    </div>
    </div>
    </form>
</body>
</html>
