<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2415_valuuttamuunnin2.aspx.cs" Inherits="G2415_valuuttamuunnin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Tervetuloat: "></asp:Label>
        <asp:TextBox ID="txtNimi" runat="server" Enabled="False"></asp:TextBox>
    
    </div>
        <p>
            Ilmainen valuuttamuunnos:</p>
        Markat <asp:TextBox ID="txtMarkat" runat="server"></asp:TextBox>
        =<asp:TextBox ID="txtEurot" runat="server" Enabled="False"></asp:TextBox>Eurot
        <br />
        Vaihtokurssi: 5.74 MK = 1 EUR<p>
            <asp:Button ID="btnMuunna" runat="server" Text="Muunna" OnClick="btnMuunna_Click" />
        </p>
    </form>
</body>
</html>
