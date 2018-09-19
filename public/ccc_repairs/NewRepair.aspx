<%@ Page Title="New Repair" Language="C#" AutoEventWireup="true" CodeBehind="NewRepair.aspx.cs" Inherits="CCC_Repairs.NewRepair" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>New Repair</title>
    <style type="text/css">
        .style1
        {
            width: 129px;
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
    <div class="style2">
    
        <asp:Label ID="Label1" runat="server" Text="New Repair:" 
            Font-Size="X-Large" Font-Bold="True"></asp:Label>
        <br />
        </div>
    <table style="width:99%;">
        <tr>
            <td class="style1">
                Repair Requested:</td>
            <td>
                <asp:TextBox ID="txtRepair" runat="server" Width="1170px" Height="66px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>        
    <asp:Label ID="blValidation" runat="server" ForeColor="Red" ></asp:Label>
    <br />    
    <asp:Button ID="btnSave" runat="server" Text="Save" Width="100px" 
        onclick="Save_Click" />
    &nbsp;&nbsp;&nbsp;    
    <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="Cancel" 
        Width="100px" />
    
    </div>
    </form>
</body>
</html>
