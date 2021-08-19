<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" EnableEventValidation="false" Inherits="LibraryManagementSys.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
    
</head>
<body style="background-image:url('Register.jpeg');background-repeat:no-repeat;background-size:cover;">
    <form id="form1" runat="server">
        <br />
        <br />
    <div>
    <div align="center" class="container jumbotron bg-light boxshadow" style="width:35%;margin-top:inherit;">
        <form>
            <div class="card-header-pills bg-dark text-white">
                <h2 class="auto-style1">User Registration Page</h2>
            </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="emaillabel">Email ID</label>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" TextMode="Email" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Email ID Required" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Email is already in use" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="phonelabel">Phone Number</label>
                    <asp:TextBox ID="txtphno" runat="server" CssClass="form-control" TextMode="Phone" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Phone Number Required" ControlToValidate="txtphno" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="txtphno" Display="Dynamic" ForeColor="Red" ValidationExpression="^[6-9][0-9]{9}$"></asp:RegularExpressionValidator>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Date of Birth</label>
                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Date of Birth Required" ControlToValidate="txtdob" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="genderlabel">Gender</label>
                <asp:RadioButtonList ID="rbtngender" runat="server" required>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Choose Gender" ControlToValidate="rbtngender" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            <div class="form-group" style="width:80%">
                <label class="text-dark" for="userlabel">Username</label>
                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Username Required" ControlToValidate="txtusername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Username Already Taken" ControlToValidate="txtusername" Display="Dynamic" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </div>
            <div class="form-group">
                <label class="text-dark" for="passlabel">Password</label>
                    <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" Width="80%" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Password Required" ControlToValidate="txtpass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="text-dark" for="conpasslabel">Confirm Password</label>
                    <asp:TextBox ID="txtpassconfirm" runat="server" CssClass="form-control" TextMode="Password" Width="80%" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Retype Password" ControlToValidate="txtpassconfirm" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Do Not Match" ControlToCompare="txtpass" ControlToValidate="txtpassconfirm" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
            </div>
                <asp:Button ID="btnreg" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnreg_Click"  />
            <div>
                <asp:LinkButton ID="lbtnlogin" runat="server" CssClass="btn btn-link" PostBackUrl="~/Login.aspx" CausesValidation="False" >Already Have An Account? Login</asp:LinkButton>
            </div>
        </form>
    </div>
    </div>
    </form>
</body>
</html>
