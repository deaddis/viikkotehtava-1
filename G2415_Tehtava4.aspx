<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2415_Tehtava4.aspx.cs" Inherits="G2415_Tehtava4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wanhat Autot</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="myDataSource" DataFile="~/App_Data/WanhatAutot.xml" runat="server" XPath="Wanhatautot/Auto"/>
    <asp:GridView ID="MyGridView" runat="server" AllowSorting="true" OnSorting="MyGridView_Sorting" AutoGenerateColumns="true">
    </asp:GridView>
    <asp:DropDownList ID="DropDownListMerkit" OnSelectedIndexChanged="DropDownListMerkit_SelectedIndexChanged" AutoPostBack="true" runat="server" />
    <asp:TextBox ID="TextBoxHaku" Width="200" runat="server"></asp:TextBox>
    <asp:Button ID="ButtonHaku" runat="server" Text="Hae" OnClick="ButtonHaku_Click" /><br />
    </div>
    </form>
</body>
</html>
