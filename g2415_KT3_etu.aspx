<%@ Page Title="" Language="C#" MasterPageFile="~/g2415_KT3.master" AutoEventWireup="true" CodeFile="g2415_KT3_etu.aspx.cs" Inherits="g2415_KT3_etu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" ExpandDepth="0">
    </asp:TreeView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/jotain.xml"></asp:XmlDataSource>
</asp:Content>

