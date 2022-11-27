<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="KullaniciControl.ascx.cs" Inherits="_10_AdresDefteri.Controls.KullaniciControl" %>
 <%
if (Request.IsAuthenticated)
{
%>
<div style="height: 50px; width: 100px; right: 0; 
        position: absolute; background-color: 
        #e1e1e1; color: black">
    <%=Session["DisplayName"] %>

    <asp:Button runat="server" ID="btn_LogOut" Text="Çıkış" 
        CssClass="btn-sm btn-primary" OnClick="btn_LogOut_Click" />
</div>

<%
}
%>