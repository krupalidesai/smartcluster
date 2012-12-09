<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Smartclusters.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>smartclusters</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <style type="text/css">
        .auto-style1
        {
            width: 110%;
            height: 59px;
            margin-left: 1px;
        }
        .auto-style13
        {
            height: 25px;
            width: 271px;
        }
        .auto-style25
        {
            width: 254px;
        }
        .auto-style26
        {
            width: 65px;
        }
        .auto-style27
        {
            width: 198px;
        }
        .auto-style28 {
            width: 271px;
        }
        </style>
</head>
<body style="height: 16px;">
    <div class="pageHeaderlogo"><div class="pageHedear">Data Visualization Tool
</div></div>
    <form id="form1" runat="server">
         <div class="mainArea">
              <div class="header">smartclusters&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="Red"></asp:Label>
              </div>
        <table class="auto-style1">
            <tr>
                <td rowspan="7" class="auto-style25" style="vertical-align:top">To create, as a community, free web based application called smartclusters; which will turn stock and sales data into interesting TreeMap. It will provide an easy and powerful ways of creating TreeMaps for analytical and presentation purposes. Smartclusters will achieve this by importing data from a variety of file formats (i.e. MS Excel and MS Access), as well as connecting databases (such as MySQL) to .NET environment. In terms of interaction, it will provide possibility to drill-down and zooming. Search and filtering possibilities will allow users to efficiently spot their data. This web application will run on Internet explorer, Firefox, Mozilla.</td>
                <td class="auto-style26"></td>
                <td class="auto-style28" style="font-family: Calibri; font-size: large">E-mail</td>
                <td style="font-family: Calibri; font-size: large">External Useful Links</td>
            </tr>
            <tr><td class="auto-style26"></td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox1" runat="server" style="text-align: left" height="22px" width="200px" TabIndex="1"></asp:TextBox>
                </td>
                 <td class="auto-style27"><a href="http://en.wikipedia.org/wiki/List_of_companies_by_revenue" tabindex="5" >iwikipedia</a></td>
               
            </tr>
    
    
            <tr>
               <td class="auto-style26"></td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter e-mail Address" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="e.g., james@yahoo.com" Font-Names="Calibri" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style27"><a href=" http://www.iweblists.com/us/commerce/MarketCapitalization.html" tabindex="6" >iweblists</a></td>
                
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style28" style="font-family: Calibri; font-size: large">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style27"><a href=" http://www.forbes.com/global2000/list/#p_1_s_a0_All%20industries_All%20countries_All%20states_" tabindex="7" >Forbes</a></td>
            </tr>
            <tr>
               <td class="auto-style26"></td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox2" runat="server" style="text-align: left" TextMode="Password" height="22px" width="200px" TabIndex="2"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    &nbsp;</td>
            
            </tr>
            <tr><td class="auto-style26"></td><td class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                </td></tr>
            <tr><td class="auto-style26"></td>
                 <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" CssClass="buttons" TabIndex="3" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID ="HyperLink1" runat ="server" NavigateUrl="~/CountryPopulation.aspx" Font-Names="Calibri" Font-Size="Large" TabIndex="4">Click here to Visulize Data</asp:HyperLink>
                    <asp:HyperLink ID ="Signup" runat ="server" NavigateUrl="~/Registration.aspx" Font-Names="Calibri" Font-Size="Large" TabIndex="4">Sign Up Here</asp:HyperLink>
                </td>
            </tr>
            </table>
             </div>
   </form>
</body>
</html>
