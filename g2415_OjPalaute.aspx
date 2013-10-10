<%@ Page Title="Oj Palaute" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2415_OjPalaute.aspx.cs" Inherits="g2415_OjPalaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Pvm: <asp:TextBox ID="txtboxDate" runat="server" Enabled="false"></asp:TextBox><br />
    Nimi: <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator id="reqName" controltovalidate="txtboxName" errormessage="Lisää Nimesi!" runat="server" ></asp:RequiredFieldValidator><br />

    Olen oppinut:<asp:TextBox id="txtboxLearned"  rows="2" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator id="reqLearned" ControlToValidate="txtboxLearned" errormessage="Lisää mitä olet oppinut!" runat="server" ></asp:RequiredFieldValidator><br />

    Haluan oppia:<asp:TextBox id="txtboxWantToLearn"  rows="2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator id="reqWantToLearn" ControlToValidate="txtboxWantToLearn" errormessage="Lisää mitä haluat oppia!" runat="server" ></asp:RequiredFieldValidator><br />

    Hyvää: <asp:TextBox id="txtboxGood"  rows="2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator id="reqGood" controltovalidate="txtboxGood" errormessage="Lisää mitä hyvää kurssissa oli!" runat="server" ></asp:RequiredFieldValidator><br />

    Parannettavaa: <asp:TextBox id="txtboxImprove"  rows="2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator id="reqImprove" controltovalidate="txtboxImprove" errormessage="Lisää mitä parannettavaa oli!" runat="server" ></asp:RequiredFieldValidator><br />

    Muuta: <asp:TextBox id="txtboxElse"  rows="2" runat="server"></asp:TextBox> <br />
    <asp:Button ID="Button1" runat="server" Text="Lähetä Palaute" OnClick="Button1_Click" /><br />

    <asp:Button ID="getPalaute" runat="server" Text="Hae Palaute" OnClick="getPalaute_Click" CausesValidation="false"/> <br />
    <asp:Label ID="outPut" Text="..." runat="server"></asp:Label>

</asp:Content>

