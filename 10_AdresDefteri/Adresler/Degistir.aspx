<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Degistir.aspx.cs" Inherits="_10_AdresDefteri.Adresler.degistir" %>

<%@ Register Src="~/Controls/SehirlerControl.ascx" TagPrefix="uc1" TagName="SehirlerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:HiddenField runat="server" ID="hdn_KisiId" />
     <asp:HiddenField runat="server" ID="hdn_AdresId" />

    <h1>
        <asp:Literal runat="server" ID="lit_adi"></asp:Literal></h1>
    <h3>Adres Güncelle</h3>
    <div>
        <label class="form-label">Adres Adı</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txt_Adi"></asp:TextBox>
        <asp:RequiredFieldValidator
            runat="server"
            ID="req1"
            ControlToValidate="txt_Adi"
            CssClass="form-text text-danger"
            ErrorMessage="boş geçilemez"></asp:RequiredFieldValidator>
    </div>
    <div>
        <label class="form-label">Satır 1</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txt_Line1"></asp:TextBox>
        <asp:RequiredFieldValidator
            runat="server"
            ID="RequiredFieldValidator1"
            ControlToValidate="txt_Line1"
            CssClass="form-text text-danger"
            ErrorMessage="boş geçilemez"></asp:RequiredFieldValidator>
    </div>
    <div>
        <label class="form-label">Satır 2</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txt_Line2"></asp:TextBox>
    </div>
    <br />
    <div>
        <label class="form-label">Sehir:</label>

        <uc1:SehirlerControl runat="server" ID="SehirlerControl" />
    </div>
    <br />
    <asp:Button runat="server" ID="btn_Kaydet" 
        Text="Kaydet" CssClass="btn btn-primary"  OnClick="btn_Kaydet_Click" />
</asp:Content>
