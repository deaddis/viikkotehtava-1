<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2415_LocalDBDemo.aspx.cs" Inherits="g2415_LocalDBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Esan poket</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Tässä kotimaisia raitoja(oliokokoelma) </h1>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae elokuvat" OnClick="btnGetMovies_Click" />
        <asp:DataList ID="myDataList" runat="server">
            <ItemTemplate>Elokuvan <%#Eval("Title") %> ohjannut <%#Eval("Director") %></ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
