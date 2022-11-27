<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Degistir.aspx.cs" Inherits="_10_AdresDefteri.Kisiler.Degistir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField  runat="server" ID="hdn_Id" />

     <h1>Kişi Düzenle</h1>
    <a href="Default.aspx">Listeye Dön</a>
    <div>
        <label class="form-label">Adi</label>
        <asp:TextBox runat="server" ID="txt_Adi" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server"
            ErrorMessage="Adi boş geçilemez"
            ControlToValidate="txt_Adi" CssClass="form-text text-danger"></asp:RequiredFieldValidator>
    </div>
    <div>
        <label class="form-label">Soyadı</label>
        <asp:TextBox runat="server" ID="txt_Soyadi" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="RequiredFieldValidator2" runat="server"
            ErrorMessage="Soyadi boş geçilemez"
            ControlToValidate="txt_Soyadi" CssClass="form-text text-danger"></asp:RequiredFieldValidator>
    </div>
    <div class="form-check">
        <label class="form-label">Cinsiyet</label><br />
        <asp:RadioButton GroupName="cinsiyet" CssClass="form-check-input" Text="Erkek" runat="server" ID="rb_Cinsiyet_Erkek" />
        <asp:RadioButton GroupName="cinsiyet" CssClass="form-check-input" Text="Kadın" runat="server" ID="rb_Cinsiyet_Kadin" />
    </div>

    <div>
        <asp:Button runat="server" ID="btn" CssClass="btn btn-primary" Text="Kaydet" OnClick="btn_Click" />
    </div>
</asp:Content>
