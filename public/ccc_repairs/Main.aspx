<%@ Page Title="CCC Repairs" Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="CCC_Repairs.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CCC Repairs</title>
    <style type="text/css">
        .style1
        {
            width: 537px;
        }
        .style2
        {
            width: 126px;
        }
        .auto-style1
        {
            width: 145px;
            height: 116px;
        }
        .auto-style2
        {
            width: 165px;
        }
    </style>
</head>
<body background="home-page-bubbles.png">
    
    <form id="form1" runat="server">
    <div>        
        <table style="width: 100%;">
            <tr>                
                <td><span style="font-size: xx-large; color: #0066cc; font-family: Tahoma; font-weight:bold">CCC Repairs</span></td>
            </tr>        
        </table>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Please make a selection:" 
            Font-Size="X-Large" Font-Bold="True" ForeColor="Green" ></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnMyRepairs" runat="server" Text="My Repairs" 
            onclick="btnMyRepairs_Click" />
        <br />
        <br />       
        <asp:Button ID="btnNewRepair" runat="server" Text="New Repair" 
            onclick="btnNewRepair_Click" />        
        <br />
        <br />
        <asp:Button ID="btnLogOff" runat="server" Text="Log Off" onclick="btnLogOff_Click" />
        <br />
        <br />
        <asp:Label Font-Size="Small" ID="Label4" runat="server" Text="Copyright © 2017 SBG Consulting"></asp:Label>    
    </div>
    </form>
</body>
</html>