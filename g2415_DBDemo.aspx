﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2415_DBDemo.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salesan viskikellari</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Mikkolan Parhaat Viskit</h1>

    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="DeliverID" HeaderText="DeliverID" SortExpression="DeliverID" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="wineType" HeaderText="wineType" SortExpression="wineType" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ViiniConnectionString1 %>" DeleteCommand="DELETE FROM [wine] WHERE [ID] = @ID" InsertCommand="INSERT INTO [wine] ([Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock]) VALUES (@Name, @Country, @DeliverID, @Year, @Price, @wineType, @InStock)" ProviderName="<%$ ConnectionStrings:ViiniConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock] FROM [wine]" UpdateCommand="UPDATE [wine] SET [Name] = @Name, [Country] = @Country, [DeliverID] = @DeliverID, [Year] = @Year, [Price] = @Price, [wineType] = @wineType, [InStock] = @InStock WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
