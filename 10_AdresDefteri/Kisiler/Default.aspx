<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" 
    Inherits="_10_AdresDefteri.Kisiler.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Kişiler</h1>

    <a href="Ekle.aspx"> Yeni kişi ekle</a>

    <asp:GridView runat="server" ID="gv" 
        CssClass="table table-striped" 
        GridLines="None"
         AutoGenerateColumns="false"
        >
        <Columns>
            <asp:BoundField DataField="AdiSoyadi"  HeaderText="Isim"/>


            <asp:HyperLinkField DataNavigateUrlFields="Id" 
                DataNavigateUrlFormatString="degistir.aspx?Id={0}" Text="değiştir" />

            <asp:TemplateField>
                <ItemTemplate>
                    <a href='<%#Eval("Id","sil.aspx?id={0}") %>'>sil</a>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:HyperLinkField DataNavigateUrlFields="Id" 
                DataNavigateUrlFormatString="../Adresler/Default.aspx?Id={0}"
                Text="Adresler"/>

        </Columns>
    </asp:GridView>

</asp:Content>
