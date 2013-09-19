<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2415_viikkotehtava2.aspx.cs" Inherits="g2415_viikkotehtava2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div> Terve: <asp:TextBox ID="txtUser" runat="server"></asp:TextBox></div>
    <div> Muunnan bitcoinit euroksi, anna Bitcoinien määrä: <asp:TextBox ID="txtCurrency" runat="server"></asp:TextBox></div>
    <div><asp:Button ID="btnConvert" runat="server" Text="Muunna" OnClick="btnConvert_Click"/></div>
    <div><asp:Label ID="lblCurrency" runat="server"></asp:Label></div>
    <asp:ListBox ID="LstOne" runat="server" Width="150px"></asp:ListBox>
    <asp:ListBox ID="LstTwo" runat="server" Width="150px" EnableViewState="False"></asp:ListBox>
</asp:Content>

