<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2415_index.aspx.cs" Inherits="g2415_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Esan viikkotehtävät</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Viikkotehtävä 1</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Viikkotehtävän 0 ratkaisu</asp:HyperLink>
    <h1>ViskiKellari</h1>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2415_DBDemo.aspx">Viskikellari</asp:HyperLink>
    <h1>ElokuvaRekisteri</h1>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/g2415_LocalDBDemo.aspx">ElokuvaRekisteri</asp:HyperLink>

    </div>
    </form>
</body>
</html>
