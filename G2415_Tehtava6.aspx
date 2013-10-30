<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2415_Tehtava6.aspx.cs" Inherits="G2415_Tehtava6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oudot Otukset</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Lisää uusi pelaaja <br />
        Sukunimi: <asp:TextBox ID="txtboxUusiSukunimi" runat="server"></asp:TextBox>
        Etunimi: <asp:TextBox ID="txtboxUusiEtunimi" runat="server"></asp:TextBox>
        Seura: <asp:DropDownList ID="cmbSeura" runat="server" DataSourceID="SqlSeura" DataTextField="seura" AutoPostBack="True"></asp:DropDownList>
        Pelipaikka: <asp:DropDownList ID="cmbPelipaikka" runat="server" DataSourceID="SqlPelipaikka" DataTextField="pelipaikka" AutoPostBack="True"></asp:DropDownList>
        <asp:Button ID="btnUusiPelaaja" runat="server" Text="Uusi Pelaaja" OnClick="btnUusiPelaaja_Click"/> <br />


    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlSeura" DataTextField="seura" DataValueField="seura" OnTextChanged="ListBox1_TextChanged"></asp:ListBox>
    <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlPelipaikka" DataTextField="pelipaikka" DataValueField="pelipaikka" OnTextChanged="ListBox2_TextChanged" AutoPostBack="True"></asp:ListBox>
    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowSorting="True" AutoGenerateEditButton="true">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="sukunimi" HeaderText="sukunimi" SortExpression="sukunimi"/>
            <asp:BoundField DataField="etunimi" HeaderText="etunimi" SortExpression="etunimi" />
            <asp:BoundField DataField="seura" HeaderText="seura" SortExpression="seura" />
            <asp:BoundField DataField="nro" HeaderText="nro" SortExpression="nro" />
            <asp:BoundField DataField="pelipaikka" HeaderText="pelipaikka" SortExpression="pelipaikka" />
            <asp:BoundField DataField="ottelut" HeaderText="ottelut" SortExpression="ottelut" />
            <asp:BoundField DataField="maalit" HeaderText="maalit" SortExpression="maalit" />
            <asp:BoundField DataField="syötöt" HeaderText="syötöt" SortExpression="syötöt" />
            <asp:BoundField DataField="pisteet" HeaderText="pisteet" SortExpression="pisteet" />
            <asp:BoundField DataField="plus" HeaderText="plus" SortExpression="plus" />
            <asp:BoundField DataField="miinus" HeaderText="miinus" SortExpression="miinus" />
            <asp:BoundField DataField="plusmiinus" HeaderText="plusmiinus" SortExpression="plusmiinus" />
            <asp:BoundField DataField="jäähyt" HeaderText="jäähyt" SortExpression="jäähyt" />
            <asp:BoundField DataField="peliaika" HeaderText="peliaika" SortExpression="peliaika" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMLiiga %>" 
        ProviderName="<%$ ConnectionStrings:SMLiiga.ProviderName %>" 
        SelectCommand="SELECT * FROM [Pisteet]  WHERE [seura] = ? ORDER BY [sukunimi]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox1" PropertyName="SelectedValue"
                Name="seura" Type="String" DefaultValue=""/>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMLiiga %>" 
        ProviderName="<%$ ConnectionStrings:SMLiiga.ProviderName %>" 
        SelectCommand="SELECT * FROM [Pisteet] ORDER BY [sukunimi]"
        UpdateCommand="UPDATE Pisteet SET sukunimi=@sukunimi,etunimi=@etunimi,seura=@seura,nro=@nro,pelipaikka=@pelipaikka,ottelut=@ottelut,maalit=@maalit,syötöt=@syötöt,pisteet=@pisteet,plus=@plus,miinus=@miinus,plusmiinus=@plusmiinus,jäähyt=@jäähyt,peliaika=@peliaika WHERE ID=@ID">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMLiiga %>" 
        ProviderName="<%$ ConnectionStrings:SMLiiga.ProviderName %>" 
        SelectCommand="SELECT * FROM [Pisteet]  WHERE [pelipaikka] = ? ORDER BY [pisteet] DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox2" PropertyName="SelectedValue"
                Name="pelipaikka" Type="String" DefaultValue=""/>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlPelipaikka" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMLiiga %>" 
        ProviderName="<%$ ConnectionStrings:SMLiiga.ProviderName %>" 
        SelectCommand="SELECT DISTINCT pelipaikka FROM [Pisteet]">
    </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlSeura" runat="server"
            ConnectionString="<%$ ConnectionStrings:SMLiiga %>"
            ProviderName="<%$ ConnectionStrings:SMLiiga.ProviderName %>"
            SelectCommand ="SELECT DISTINCT [seura] FROM [Pisteet] ">
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
