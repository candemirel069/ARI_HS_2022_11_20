<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_10_AdresDefteri._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Adres Defteri</h1>
        <p class="lead">Adres Defterine hoş geldiniz</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Kişiler</h2>
            <p>
                Sistemimizde 
             <b>(
                 <asp:Label Text="0" ID="lbl_KisiSayisi" runat="server" />
                 )</b>
                tane kişi kayıtlıdır
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Adresler</h2>
            <p>
                Sistemimizde 
             <b>(
                 <asp:Label Text="0" ID="lbl_AdresSayisi" runat="server" />
                 )</b>
                tane adres kayıtlıdır
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Şehirler</h2>
             <p>
                Sistemimizde 
             <b>(
                 <asp:Label Text="0" ID="lbl_SehirSayisi" runat="server" />
                 )</b>
                tane kişi kayıtlıdır
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
