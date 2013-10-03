<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2415_ISrss.aspx.cs" Inherits="g2415_ISrss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="myDataSource" runat="server" XPath="rss/channel/item"></asp:XmlDataSource>
    <h1>    <asp:Button ID="btnGetNews" Text="Uutiset" runat="server" OnClick="btnGetNews_Click" /> <br/>
    <asp:Label ID="lblHeader" runat="server" Text="..."></asp:Label></h1>
    <asp:Label ID="lblBody" runat="server" Text="..."></asp:Label>
    <asp:Table ID="myDataTable" runat="server"></asp:Table>
</asp:Content>

