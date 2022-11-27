<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_10_AdresDefteri.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login</h1>
    <br /><br /><br />
    <div>
        <label> Kullanıcı adı:</label><br />
        <asp:TextBox runat="server" ID="txt_Username" CssClass="form-control"></asp:TextBox>
        <br /><br />
        
        <label> Şifre:</label><br />
        <asp:TextBox runat="server" ID="txt_Password" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:CheckBox runat="server" ID="ch_RememberMe" Text="Beni hatırla" /><br />
        <asp:Button Text="Giriş" CssClass="btn btn-primary" runat="server" ID="btn_Login"
            OnClick="btn_Login_Click" />

    </div>
</asp:Content>

