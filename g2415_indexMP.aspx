﻿<%@ Page Title="G2415 Kotisivu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2415_indexMP.aspx.cs" Inherits="g2415_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    Olen Markus Mikkola ja tässä ovat tehtäväni.
    </div>
            <h1>Viikkotehtävä 1</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Viikkotehtävän 0 ratkaisu</asp:HyperLink>
        <div><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2415_DBDemo.aspx">Viskikellari</asp:HyperLink></div>
        <div><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/g2415_LocalDBDemo.aspx">ElokuvaRekisteri</asp:HyperLink></div>
            <h1>Vk38 tuntiharkat</h1>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/G2415_age.aspx">Iänlaskenta kalenteri</asp:HyperLink>
            <h1>Kotitehtävät 1</h1>
        <div><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/G2415_valuuttamuunnin.aspx">Kotitehtävä1_Valuuttamuunnin</asp:HyperLink></div>
        <div><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/G2415_eläkelaskuri.aspx">Kotitehtävä2_Eläkelaskuri</asp:HyperLink></div>

            <h1>Vk40 Tuntitehtävä</h1>
        <div><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/g2415_ISrss.aspx">Iltasanomat RSS feed</asp:HyperLink></div>

</asp:Content>

