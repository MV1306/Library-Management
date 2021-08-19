<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LibraryManagementSys.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home - Session["user"].ToString()</title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td colspan="3">Welcome&nbsp;
                    <asp:Label ID="lblwelcome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">You have logged in lastly at&nbsp;
                    <asp:Label ID="lbltime" runat="server"></asp:Label>
&nbsp;on&nbsp;
                    <asp:Label ID="lbldate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
