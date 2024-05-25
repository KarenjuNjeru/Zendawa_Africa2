<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Zendawa_Africa2.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Login</h2>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <asp:Panel ID="Panel1" runat="server" CssClass="login-panel">
        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." ForeColor="Red" />

        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" />

        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
        
        <div class="social-login">
            <h3>Or sign in with</h3>
            <asp:Button ID="btnGoogleLogin" runat="server" Text="Google" OnClick="btnGoogleLogin_Click" CssClass="btn btn-danger" />
            <asp:Button ID="btnFacebookLogin" runat="server" Text="Facebook" OnClick="btnFacebookLogin_Click" CssClass="btn btn-primary" />
        </div>
        
        <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl="ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
    </asp:Panel>
</asp:Content>
