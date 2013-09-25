<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2415_valuuttamuunnin.aspx.cs" Inherits="G2415_valuuttamuunnin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:TextBox ID="txtNimi" runat="server"></asp:TextBox>
        <asp:Button ID="btnParameter" runat="server" Text="Parametrina" Width="96px" OnClick="btnParameter_Click" />
        <asp:Button ID="btnSession" runat="server" Text="Sessiona" Width="110px" OnClick="btnSession_Click" />
        <asp:Button ID="btnKeksi" runat="server" Text="Keksinä" Width="114px" OnClick="btnKeksi_Click" />

    </div>
    </form>
</body>
</html>
