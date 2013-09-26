<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DataboundControls.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>Gridview</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HueHueConString %>" SelectCommand="SELECT * FROM [Movies]"></asp:SqlDataSource>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
            <br />
            director:
            <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
            <br />
            year:
            <asp:Label ID="yearLabel" runat="server" Text='<%# Eval("year") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

