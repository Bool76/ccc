<%@ Page Title="CCC Repairs" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CCC_Repairs._Default" %>

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
            width: 87px;
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
        <asp:Label ID="Label3" runat="server" Text="Log In To CCC Repairs" 
            Font-Size="X-Large" Font-Bold="True" ForeColor="Green" ></asp:Label>
        <br />
        <br />
        <table>
        <tr><td class="style2">    
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            </td><td class="style1">
        <asp:TextBox ID="txtUsername" runat="server" Width="130px"></asp:TextBox>
            </td></tr>
        <tr><td class="style2"></td><td class="style1"></td></tr>
        <tr><td class="style2">
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td><td class="style1">
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
            </td></tr>
        <tr><td class="style2"></td><td class="style1"></td></tr>
        </table>
        <br />
        <asp:Button ID="btnLogIn" runat="server" Text="Log In" onclick="btnLogIn_Click" 
            Width="100px" Font-Bold="True" Font-Size="Medium" />
        &nbsp;&nbsp;
        <asp:Label ID="lblValidation" forecolor="Red" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label Font-Size="Small" ID="Label4" runat="server" Text="Copyright © 2017 SBG Consulting"></asp:Label>    
    </div>
    </form>
</body>
</html>