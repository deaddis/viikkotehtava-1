<%@ Page Title="Calendar" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="G2415_age.aspx.cs" Inherits="G2415_age" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><asp:Label ID="lblDate" runat="server"></asp:Label></div>
    <div><asp:Label ID="lblSelectedDate" runat="server"></asp:Label></div>
    <asp:Calendar ID="Calendar" runat="server" Width="621px" OnSelectionChanged="fart"></asp:Calendar>
</asp:Content>


