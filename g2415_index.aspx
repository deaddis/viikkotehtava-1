﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2415_index.aspx.cs" Inherits="g2415_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Esan viikkotehtävät</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Viikkotehtävä 1</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Viikkotehtävän 0 ratkaisu</asp:HyperLink>
        <div><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2415_DBDemo.aspx">Viskikellari</asp:HyperLink></div>
        <div><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/g2415_LocalDBDemo.aspx">ElokuvaRekisteri</asp:HyperLink></div>
    <h1>Vk38 tuntiharkat</h1>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/G2415_age.aspx">Iänlaskenta kalenteri</asp:HyperLink>
    </form>
</body>
</html>
