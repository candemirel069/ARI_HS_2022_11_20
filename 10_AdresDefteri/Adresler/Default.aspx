<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_10_AdresDefteri.Adresler.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/app/adres.css" rel="stylesheet" />  
    <h1>
        <asp:Literal runat="server" ID="lit_Adi"></asp:Literal>
    </h1>
    <h3>Adresleri</h3>


    <a href="/Kisiler/default.aspx">Kişi Listesi</a><br />
    <asp:LinkButton runat="server" Text="Yeni Adres Ekle"
        ID="btn_Ekle" OnClick="btn_Ekle_Click"></asp:LinkButton>

    <asp:Repeater runat="server" ID="rp_Adresler">
        <%-- <SeparatorTemplate><hr /></SeparatorTemplate>--%>
        <ItemTemplate>

            <div class="adres-container">
                <div class="adres-name">
                    <%#Eval("Adi") %>
                </div>
                <div class="adres-lines">
                    <%#Eval("AdresSatiri1") %>
                    <br />
                    <%#Eval("AdresSatiri2") %> / <b><%#Eval("Sehir.Adi") %></b>
                </div>
                <a href="degistir.aspx?KisiId=<%=this.KisiId %>&id=<%#Eval("Id") %>" class="btn-sm btn-primary">değiştir</a>
                <a href="sil.aspx?KisiId=<%=this.KisiId %>&id=<%#Eval("Id") %>" class="btn-sm btn-primary">sil</a>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Panel runat="server" ID="pn_EmptyData" Visible="false">
        <div style="text-align:center">
            Adres bulununamadı
        </div>
    </asp:Panel>

 
</asp:Content>
