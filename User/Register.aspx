<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Register.aspx.cs" Inherits="LibraryMgmtSystem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration ELMS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body style="background-image:url('Library1.jpeg');background-repeat:no-repeat;background-size:cover;">
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
                <h2 class="auto-style1">User Registration Page</h2>
            </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Fullname</label>
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Username</label>
                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            <div class="form-group">
                <label class="text-dark" for="passlabel">Password</label>
                    <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="text-dark" for="conpasslabel">Confirm Password</label>
                    <asp:TextBox ID="txtpassconfirm" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
            </div>
                <asp:Button ID="btnreg" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnreg_Click1" />
            <div>
                <asp:LinkButton ID="lbtnreglog" runat="server" CssClass="btn btn-link" PostBackUrl="~/UserLogin.aspx" >Already Have an Account? Login</asp:LinkButton>
            </div>
        </form>
    </div>
    </div>
    </form>
</body>
</html>
