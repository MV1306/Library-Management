<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" EnableEventValidation="false" Inherits="LibraryManagementSys.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Change Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body style="background-image:url('Change.jpeg');background-repeat:no-repeat;background-size:cover;">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
    <div>
    <div align="center" class="container jumbotron bg-light boxshadow" style="width:35%;margin-top:inherit;">
        <form>
            <div class="card-header-pills bg-dark text-white">
                <h2 class="auto-style1">Change Password</h2>
            </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="newpasslabel">New Password</label>
                    <asp:TextBox ID="txtnewpass" runat="server" CssClass="form-control" TextMode="Password" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Password Required" ControlToValidate="txtnewpass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="confirmpasslabel">Confirm Password</label>
                    <asp:TextBox ID="txtconfirmnewpass" runat="server" CssClass="form-control" TextMode="Password" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Retype Password" ControlToValidate="txtconfirmnewpass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Do Not Match" ControlToCompare="txtnewpass" ControlToValidate="txtconfirmnewpass" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                </div>
                <asp:Button ID="btnchngnewpw" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnchngnewpw_Click1" />
        </form>
    </div>
    </div>
    </form>
</body>
</html>
