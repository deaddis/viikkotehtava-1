<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava1.aspx.cs" Inherits="Tehtava1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>IIO13200 ViikkoTeht1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Tehtävä 1 ratkaistu</h1>
        <div id="tulos" runat="server">...</div>
        <asp:Button ID="btnTest" Text="Ratkaisu" OnClick="btnTest_Click" runat="server" />
    </div>
    </form>
</body>
</html>