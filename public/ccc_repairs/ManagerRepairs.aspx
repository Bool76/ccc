<%@ Page Title="CCC Manager Repairs" Language="C#" AutoEventWireup="true" CodeBehind="ManagerRepairs.aspx.cs" Inherits="CCC_Repairs.ManagerRepairs" %>

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
        <asp:Label ID="Label3" runat="server" Text="Manager Repairs:" 
            Font-Size="X-Large" Font-Bold="True" ForeColor="Green" ></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnBack" runat="server" Text="Back" 
            onclick="btnBack_Click" />
            <br />
        <br />        
        <asp:GridView ID="GridView1" OnRowUpdating = "Update" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  DataKeyNames="Repairs_ID" EnableModelValidation="True">
        <rowstyle backcolor="LightCyan"  
           forecolor="DarkBlue"           />                    
        <alternatingrowstyle backcolor="PaleTurquoise"  
          forecolor="DarkBlue"          />
         <Columns>
         <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowCancelButton="true" ValidationGroup="GridView1"/>
        <asp:BoundField DataField="Repairs_ID" HeaderText="Repairs_ID" ReadOnly="True" SortExpression="Repairs_ID" visible="false"/>
        <asp:BoundField DataField="Insert_Date" HeaderText="Date Requested" ReadOnly="True" SortExpression="Insert_Date" />        
        <asp:TemplateField HeaderText="Repair_Requested" SortExpression="Repair_Requested">
            <ItemTemplate>
                <div style="width: 10em; word-wrap: break-word;">
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Repair_Requested") %>'></asp:Label>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Facility" HeaderText="Facility" ReadOnly="True" SortExpression="Facility" />        
        <asp:BoundField DataField="EMail" HeaderText="EMail" ReadOnly="True" SortExpression="Facility" />
        <asp:TemplateField HeaderText="Repair Scheduled Date" SortExpression="Repair_Scheduled_Date">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Repair_Scheduled_Date", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator" ValidationGroup="GridView1" ControlToValidate="TextBox1"  forecolor="Red" errormessage="Enter correct date format: mm/dd/yyyy" Display="Dynamic" Operator="DataTypeCheck" Type="Date" runat="Server" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Repair_Scheduled_Date", "{0:MM/dd/yyyy}") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Repair Complete Date" SortExpression="Repair_Complete_Date">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Repair_Complete_Date", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" ValidationGroup="GridView1" ControlToValidate="TextBox2" forecolor="Red" errormessage="Enter correct date format: mm/dd/yyyy" Display="Dynamic" Operator="DataTypeCheck" Type="Date" runat="Server" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Repair_Complete_Date", "{0:MM/dd/yyyy}") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>                
        <asp:CommandField CausesValidation="true" ValidationGroup="GridView1" visible="false"/>
        </Columns>        
        </asp:GridView>
        <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource1" runat="server" 
        ConnectionString="Server = mysql.wease.net; Database = ccc_repairs; Uid = ccc_repairs; Pwd = creative; Convert Zero Datetime=True" 
        SelectCommand="SELECT Repairs_ID,Insert_Date,Repair_Requested,Facility,EMail,Repair_Scheduled_Date,Repair_Complete_Date FROM Tbl_Repairs"
        UpdateCommand="UPDATE Tbl_Repairs SET Repair_Scheduled_Date = @Repair_Scheduled_Date, Repair_Complete_Date = @Repair_Complete_Date WHERE Repairs_ID = @Repairs_ID">
        </asp:SqlDataSource>     
        <br />
        <br />
        <asp:Label Font-Size="Small" ID="Label4" runat="server" Text="Copyright © 2017 SBG Consulting"></asp:Label>    
    </div>
    </form>
</body>
</html>
