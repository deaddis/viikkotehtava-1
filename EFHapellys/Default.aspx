<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EF Hue</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnGetIlmot" runat="server" Text="Hae kaikki ilmot" OnClick="btnGetIlmot_Click" />
        <asp:TextBox ID="txtboxAsioid" runat="server"></asp:TextBox>
        <asp:Button ID="btnAsioid" runat="server" Text="Hae AsioId:n mukaan" OnClick="btnAsioid_Click"></asp:Button>
        <asp:Label ID="lblLasnaoloa" runat="server">...</asp:Label> <br/>
        <asp:DropDownList ID="cmbStudents" runat="server"></asp:DropDownList>
        <asp:GridView ID="gvData" runat="server"></asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AsioID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Etunimi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sukunimi<br />
        <asp:TextBox ID="txtboxMyAsioid" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtboxEtunimi" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtboxSukunimi" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnIlmottaudu" runat="server" Text="btnIlmottaudu" OnClick="btnIlmottaudu_Click"/>
        <br />
    </div>
    </form>
</body>
</html>
