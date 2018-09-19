<%@ Page Title="Your Repairs" Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="CCC_Repairs.Repairs" %>

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
        <asp:Label ID="Label3" runat="server" Text="Your Repairs:" 
            Font-Size="X-Large" Font-Bold="True" ForeColor="Green" ></asp:Label>
        <br />        
        <br /> 
        <asp:Button ID="btnNewRepair" runat="server" Text="New Repair" 
            onclick="btnNewRepair_Click" />        
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  DataKeyNames="Repairs_ID">
        <rowstyle backcolor="LightCyan"  
           forecolor="DarkBlue"           />                    
        <alternatingrowstyle backcolor="PaleTurquoise"  
          forecolor="DarkBlue"          />
         <Columns>         
        <asp:BoundField DataField="Repairs_ID" HeaderText="Repairs_ID" ReadOnly="True" SortExpression="Repairs_ID" visible="false"/>
        <asp:BoundField DataField="Insert_Date" HeaderText="Date Requested" ReadOnly="True" SortExpression="Insert_Date" />
        <asp:BoundField DataField="Repair_Requested" HeaderText="Repair Requested" ReadOnly="True" SortExpression="Repair_Requested" />        
        <asp:BoundField DataField="Repair_Scheduled_Date" HeaderText="Repair Scheduled Date" ReadOnly="True" SortExpression="Repair_Scheduled_Date" />        
        <asp:BoundField DataField="Repair_Complete_Date" HeaderText="Repair Complete Date" ReadOnly="True" SortExpression="Repair_Complete_Date" />        
        </Columns>        
        </asp:GridView>
        <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource1" runat="server" 
            ConnectionString="Server = mysql.wease.net; Database = ccc_repairs; Uid = ccc_repairs; Pwd = creative; Convert Zero Datetime=True" 
        SelectCommand="SELECT * FROM Tbl_Repairs">
        </asp:SqlDataSource> 
        <br />
        <br />
        <asp:Label Font-Size="Small" ID="Label4" runat="server" Text="Copyright © 2017 SBG Consulting"></asp:Label>    
    </div>
    </form>
</body>
</html>