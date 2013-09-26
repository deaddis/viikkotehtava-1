<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="G2415_.aspx.cs" Inherits="G2415_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Records2.xml"></asp:XmlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="XmlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="artist" HeaderText="artist" SortExpression="artist" />            
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
    </asp:GridView>
</asp:Content>

