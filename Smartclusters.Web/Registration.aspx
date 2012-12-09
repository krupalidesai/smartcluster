<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <style type="text/css">
        .auto-style1
        {
            height: 30px;
        }
        .auto-style3
        {
            text-align: right;
        }
        .auto-style4
        {
            height: 30px;
            text-align: right;
        }
    </style>
</head>
<body>
        <div class="pageHeaderlogo"><div class="pageHedear">Data Visualization Tool
</div>
     
        </div>
    <form id="form1" runat="server">
     <div class="mainArea">
    <div class="header">Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="Red"></asp:Label>
         </div>
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style3" style="font-family: Calibri; font-size: large">First Name:</td>
                <td>
                    <asp:TextBox ID="TextBoxFN" runat="server" height="22px" width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="Plesae Enter First Name" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-family: Calibri; font-size: large">Last Name:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxLN" runat="server" height="22px" width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Please Enter Last Name" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: Calibri; font-size: large">E-mail Address:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server" height="22px" width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter E-mail Address" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="e.g., james@yahoo.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Calibri" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: Calibri; font-size: large">Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxPwd" runat="server" TextMode="Password" height="22px" width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPwd" ErrorMessage="Please Enter Password" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: Calibri; font-size: large">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxCPwd" runat="server" TextMode="Password" height="22px" width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCPwd" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPwd" ControlToValidate="TextBoxCPwd" ErrorMessage="Password and Cofirm Password should be same" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: Calibri; font-size: large">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Sign Up" CssClass="buttons" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
