<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <style type="text/css">
    
        .auto-style1
        {
            text-align: center;
        }
        .auto-style2
        {
            text-align: right;
        }
        .auto-style3
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="pageHeaderlogo"><div class="pageHedear">Data Visualization Tool
</div></div>
    <form id="form1" runat="server">

     <div class="mainArea">
        <div class="header" >
        Login<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="Red"></asp:Label>
            <br />
        </div>
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style2" style="font-family: Calibri; font-size: large">E-mail Address:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server" height="22px" width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter E-mail Address" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="e.g., james@yahoo.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Calibri" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Calibri; font-size: large">Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxPwd" runat="server" TextMode="Password" height="22px" width="128px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPwd" ErrorMessage="Please Enter Password" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: Calibri; font-size: large">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" CssClass="buttons"/>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
