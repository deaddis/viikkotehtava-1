<%@ Page Title="" Language="C#" MasterPageFile="~/G2415_Levykauppa.master" AutoEventWireup="true" CodeFile="G2415_Tehtava5.aspx.cs" Inherits="G2415_Tehtava5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" >
        <LayoutTemplate>
          <table cellpadding="2" border="0" width="640px" runat="server" style="margin:10px 10px 10px 10px; " id="tblCars">
            <tr runat="server" id="itemPlaceholder" />
          </table>
        </LayoutTemplate>
         <ItemTemplate>
          <tr id="Tr2" runat="server">
            <td>
               <asp:Image ID="Image1" runat="Server" Width="200px" Height="200px" ImageUrl='<%#Eval("Kuva") %>' />
            </td>
            <td>
              <div id="Div1" runat="Server">
                  <h1><span class="bold"><%#Eval("ArtistTitle") %></span></h1>
                  <p><span class="bold">ISBN : </span><asp:LinkButton runat="server" Text='<%#Eval("ISBN") %>' CommandArgument='<%#Eval("ISBN") %>' ID="OpenAlbum" OnClick="OpenAlbum_Click" /> <br />
                     <span class="bold">Price : </span> <%#Eval("Price") %>
                  </p>
              </div>
            </td>
          </tr>
        </ItemTemplate>
    </asp:ListView>

    <asp:ListView ID="ListView2" runat="server" >
        <LayoutTemplate>
          <table cellpadding="2" border="0" width="640px" runat="server" style="margin:10px 10px 10px 10px; " id="itemPlaceholder" >
          </table>
        </LayoutTemplate>
         <ItemTemplate>
          <tr id="Tr2" runat="server">
                <td>
                   <asp:Image ID="Image1" runat="Server" ImageUrl='<%#Eval("Kuva") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <div id="Div1" runat="Server">
                        <h1><span class="bold"><%#Eval("ArtistTitle") %></span></h1>
                        <p> <span class="bold">ISBN : </span><%#Eval("ISBN") %> 
                            <br> </br>
                        <span class="bold">Price : </span><%#Eval("Price") %>
                            <br></br>
                        <span class="bold">Songs : </span>
                            <br></br>
                        <asp:ListView ID="ListView3" runat="server" ItemPlaceholderID="SongsPlaceHolder" DataSource='<%#Eval("Songs") %> ' >
                        <LayoutTemplate>
                            <asp:PlaceHolder runat="server" ID="SongsPlaceHolder" />
                        </LayoutTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" Text='<%# Eval("Name") %>' runat="server" />
                                <br></br>
                            </ItemTemplate>
                        </asp:ListView>
                      </p>
                      <asp:LinkButton runat="server" Text="Takaisin" ID="Back" OnClick="Back_Click"></asp:LinkButton>
                  </div>
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
                          
    <div runat="server" id="er"></div>
</asp:Content>

