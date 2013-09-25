<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2415_Eläkelaskuri.aspx.cs" Inherits="G2415_Eläkelaskuri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Ikä&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Button ID="Button1" runat="server" Text="-" OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox1" Text="18" runat="server" MaxLength="2" ToolTip="Ikäs perkele" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Vain numeroita" Visible="false" Display="Static" ValidationExpression="\d+"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="huehue" runat="server" ControlToValidate="TextBox1" ErrorMessage="RangeValidator" MaximumValue="63" MinimumValue="18" Type="Integer" Visible="false"></asp:RangeValidator>
        <asp:Button ID="Button2" runat="server" Text="+" OnClick="Button2_Click" />vuotta
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Lakisääteinen eläke 1500€&nbsp;&nbsp;&nbsp;&nbsp; Elinaikakertoimen vaikutus -238€<br />
        Palkka&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" Text="-" OnClick="Button3_Click" />
        <asp:TextBox ID="TextBox2" Text="1000" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Vain numeroita" Visible="false" Display="Static" ValidationExpression="\d+"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="huehue1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="25565" MinimumValue="0" Type="Integer" Visible="false"></asp:RangeValidator>
        <asp:Button ID="Button4" runat="server" Text="+" OnClick="Button4_Click" />
        euroa
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
        €
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/g2415_indexMP.aspx">Lue Lisää</asp:HyperLink>
        </div>
    </div>
    </form>
</body>
</html>
