<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" EnableEventValidation="false" Inherits="LibraryManagementSys.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Forgot Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body style="background-image:url('Forgot.jpeg');background-repeat:no-repeat;background-size:cover;">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
    <div>
    <div align="center" class="container jumbotron bg-light boxshadow" style="width:35%;margin-top:inherit;">
            <div class="card-header-pills bg-dark text-white">
                <h2 class="auto-style1">Forgot Password</h2>
            </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Username</label>
                    <asp:TextBox ID="txtunamechng" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic" ControlToValidate="txtunamechng"></asp:RequiredFieldValidator>
                </div>
                <asp:Button ID="btnchngpw" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnchngpw_Click" />
    </div>
    </div>
    </form>
</body>
</html>
