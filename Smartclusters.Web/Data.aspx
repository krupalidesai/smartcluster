<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SmartClusters Homepage</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <style type="text/css">
        .auto-style2 {
            width: 23px;
        }
        .auto-style3 {
            width: 498px;
            text-align: right;
        }
        .auto-style4
        {
            width: 23px;
            height: 34px;
        }
        .auto-style5
        {
            width: 498px;
            text-align: right;
            height: 34px;
        }
        .auto-style6
        {
            height: 34px;
        }
        .auto-style7
        {
            height: 34px;
            width: 405px;
        }
        .auto-style8
        {
            width: 405px;
        }
    </style>
</head>
<body>
        <div class="pageHeaderlogo"><div class="pageHedear">Data Visualization Tool
</div>
     
        </div>
    <form id="form1" runat="server">
     <div class="mainArea">
         <div class="header">Data</div>
    <table style="width: 100%;">
             <tr>
                 <td colspan="3">
                     &nbsp;</td>
                
             </tr>
             <tr>
                 <td class="auto-style4"></td>
                 <td style="vertical-align:central; font-family: Calibri; font-size: medium;" class="auto-style5">To Insert Stock Data, Please click here :</td>
                 <td class="auto-style7" > 

                     <asp:Button ID="btnInsertData" runat="server" Text="Insert Stock Data" onclick="btnInsertData_Click" CssClass="buttons" height="33px" width="290px"/>
       </td>
                 <td class="auto-style6"></td>
             </tr>
             <tr>
                  <td class="auto-style2"></td>
                 <td style="vertical-align:central; font-family: Calibri; font-size: medium;" class="auto-style3">
                     <asp:Label ID="Label1" runat="server" Text="To Visualize previously inserted Stock Data, Please click here:"></asp:Label>
                  </td>
                 <td class="auto-style8" >
                      <asp:Button ID="VisualizeData" runat="server" Text="Visualize Stock Data" onclick="btnVisualizeData_Click" CssClass="buttons" height="33px" width="290px" />
                     </td>
                 <td></td>
             </tr>
             <tr>
                  <td class="auto-style2">&nbsp;</td>
                 <td style="vertical-align:central; font-family: Calibri; font-size: medium;" class="auto-style3">
                     <asp:Label ID="Label3" runat="server" Text="To Insert Country-Population Data, Please click here:"></asp:Label>
                  </td>
                 <td class="auto-style8" >
                      <asp:Button ID="BtnInsertCountrydata" runat="server" CssClass="buttons" height="33px" OnClick="BtnInsertCountrydata_Click" Text="Insert Country-Population Data" width="290px" />
                     </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                  <td class="auto-style2">&nbsp;</td>
                 <td style="vertical-align:central; font-family: Calibri; font-size: medium;" class="auto-style3">
                     <asp:Label ID="Label2" runat="server" Text="To Visualize previously inserted Country-Population Data, Please click here:"></asp:Label>
                  </td>
                 <td class="auto-style8" >
                      <asp:Button ID="BtnVisualizeContryData" runat="server" CssClass="buttons" OnClick="BtnVisualizeContryData_Click" Text="Visualize Country Population Data" Width="290px" />
                     </td>
                 <td>&nbsp;</td>
             </tr>
        <tr><td colspan="4"><br /></td></tr>
   
       
     </table>
    </div>
    </form>
</body>
</html>
