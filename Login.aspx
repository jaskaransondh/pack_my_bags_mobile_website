<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/login.css" />
    <link href='https://fonts.googleapis.com/css?family=Baumans' rel='stylesheet' />
    <link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet' />
    <link rel="shortcut icon" href="images/js-logo.ico"/>
    <title>Login - Pack My Bags</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 id="title">Pack My Bags</h1>
        <div id="blurrable" class="content">
            <div class="image">
                <img id="logo" src="images/PMB_LOGO.png" />
                <img id="img1" src="images/login_content.jpg" />
            </div>
            <div class="main">
                <h1 id="login">Login</h1>
                <hr /><br/>
                Username: <asp:TextBox ID="tbUsername" runat="server" Width="100%"></asp:TextBox><!--<input type="text" id="username" />--><br/>
                <asp:RequiredFieldValidator ID="usernameValidator" ValidationGroup="login" runat="server" ErrorMessage="Please enter username properly!" ControlToValidate="tbUsername" ForeColor="Red" Enabled="True"></asp:RequiredFieldValidator>
                <br/>
                Password: <asp:TextBox ID="tbPassword" runat="server" Width="100%" TextMode="Password"></asp:TextBox><!--<input type="password" id="password" />--><br/>
                <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ValidationGroup="login" ErrorMessage="Please enter password properly!" ControlToValidate="tbPassword" ForeColor="Red" Enabled="True"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btnGuest" runat="server" Text="Continue as GUEST" OnClick="btnGuest_Click" BackColor="#4286F4" Font-Size="11px"/>
                <!--<input type="submit" id="btnGuest" value="Continue as GUEST" />-->
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="LOGIN" ValidationGroup="login" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnSignup" runat="server" Text="SIGNUP" OnClick="btnSignup_Click" />
            </div>
        </div>
        <asp:Panel ID="signup" runat="server" Visible="False">
            <div id="input1" class="inline">
                <asp:Label ID="lblUser" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
            </div>
            <div id="input2" class="inline">
                <asp:Label ID="lblPws" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="tbPwd" runat="server"></asp:TextBox>
            </div>
            <div id="input3" class="inline">
                <asp:Label ID="lblE" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="tbE" runat="server"></asp:TextBox>
            </div>
            <div id="input4" class="inline">
                <asp:Label ID="lblE2" runat="server" Text="Confirm Email"></asp:Label>
                <asp:TextBox ID="tbE2" runat="server"></asp:TextBox>
            </div>
            <div class="inline">
                <asp:Button ID="btnSubSign" runat="server" Text="SUBMIT" OnClick="btnSubSign_Click" />
            </div>
            <div class="inline">
                <asp:Button ID="btnSubCan" runat="server" Text="CANCEL" OnClick="btnSubCan_Click" />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
