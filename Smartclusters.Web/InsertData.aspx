<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertData.aspx.cs" Inherits="InsertData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Data</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <style type="text/css">
        .auto-style1
        {
            font-weight: normal;
        }
        .auto-style5
        {
            font-weight: normal;
            height: 56px;
            text-align: center;
        }
        .auto-style10
        {
            text-align: right;
        }
        .auto-style11
        {
            height: 56px;
            text-align: center;
        }
        .auto-style12
        {
            height: 56px;
        }
    </style>
</head>
<body>
        <div class="pageHeaderlogo"><div class="pageHedear">Data Visualization Tool
</div>
     
        </div>
    <form id="form1" runat="server">
     <div class="mainArea">
         <div class="header">Insert Data&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" ForeColor="Red"></asp:Label>
         </div>
    <table style="width: 100%; height: 346px;">
            <tr><td colspan="2">
<asp:LinkButton ID="hplbtnBack" runat="server" CausesValidation="False" Text="Back" Font-Bold="True" OnClick="hplbtnBack_Click" Font-Names="Calibri" Font-Size="X-Large"></asp:LinkButton>                             </td></tr>
                         <tr><td colspan="2">
                             &nbsp;
                             </td></tr>
             
             <tr>
                 <td class="auto-style1"> </td>
                 <td style="text-align:left">
                     <table align="center">
                          
                         <tr><td class="auto-style10" style="font-family: Calibri; font-size: large">Name:</td><td><asp:TextBox ID="stck_name" runat="server" height="22px" width="128px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="stck_name" ErrorMessage="Please Enter Name" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                             </td></tr>
                         <tr><td class="auto-style10" style="font-family: Calibri; font-size: large">Sales(In USD):</td><td><asp:TextBox ID="stck_sale" runat="server" height="22px" width="128px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="stck_sale" ErrorMessage="Please Enter Sales " ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>

                             </td></tr>
                        
                         <tr><td class="auto-style10" style="font-family: Calibri; font-size: large; text-align: right;">Profits(In USD):</td><td><asp:TextBox ID="stck_prft" runat="server" height="22px" width="128px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="stck_prft" ErrorMessage="Please Enter Profits" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                             </td></tr>
                         <tr><td class="auto-style10" style="font-family: Calibri; font-size: large; text-align: right;">Assets(In USD):</td><td> <asp:TextBox ID="stck_aset" runat="server" height="22px" width="128px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="stck_aset" ErrorMessage="Please Enter Assets" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                             </td></tr>
                         <tr><td class="auto-style10" style="font-family: Calibri; font-size: large">Market Values(In USD):</td><td><asp:TextBox ID="stck_mrkt_valu" runat="server" height="22px" width="128px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="stck_mrkt_valu" ErrorMessage="Please Enter Market Values" ForeColor="Red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                             </td></tr>
                     </table>
                     <br />
                    </td>
                 <td></td>
             </tr>
            
             <tr>
                 <td class="auto-style5"></td>
                 <td class="auto-style11"><asp:Button ID="Add0" runat="server" Text="Add" OnClick="Add_Click" CssClass="buttons" Width="65px" />
                     
                 </td>
                 <td class="auto-style12"></td>
             </tr>
            
       
     </table> 
    </div>
    </form>
    </body>
</html>
