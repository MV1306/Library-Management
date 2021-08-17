<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ChangePassword.aspx.cs" Inherits="LibraryMgmtSystem.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Change Password ELMS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body style="background-image:url('Library3.jpeg');background-repeat:no-repeat;background-size:cover;">
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
                <h2 class="auto-style1">Change Password</h2>
            </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Username</label>
                    <asp:TextBox ID="txtunamenewchng" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="newpasslabel">New Password</label>
                    <asp:TextBox ID="txtnewpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="confirmpasslabel">Confirm Password</label>
                    <asp:TextBox ID="txtconfirmnewpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Button ID="btnchngnewpw" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnchngnewpw_Click1" />
        </form>
    </div>
    </div>
    </form>
</body>
</html>
