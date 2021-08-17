﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ForgotPassword.aspx.cs" Inherits="LibraryMgmtSystem.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Forgot Password ELMS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</head>
<body style="background-image:url('Library2.jpeg');background-repeat:no-repeat;background-size:cover;">
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
                <h2 class="auto-style1">Forgot Password</h2>
            </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Username</label>
                    <asp:TextBox ID="txtunamechng" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="btnchngpw" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnchngpw_Click" />
        </form>
    </div>
    </div>
    </form>
</body>
</html>