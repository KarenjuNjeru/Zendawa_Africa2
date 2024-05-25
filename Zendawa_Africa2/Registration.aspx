<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Zendawa_Africa2.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Register</h2>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />

        <div class="form-group">
            <label for="txtUsername">Username</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" OnTextChanged="txtUsername_TextChanged" />
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" CssClass="text-danger" />
        </div>

        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" OnTextChanged="txtEmail_TextChanged" />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="text-danger" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" CssClass="text-danger" />
        </div>

        <div class="form-group">
            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" OnTextChanged="txtPassword_TextChanged" />
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" CssClass="text-danger" />
        </div>

        <div class="form-group">
            <label for="txtConfirmPassword">Confirm Password</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" OnTextChanged="txtConfirmPassword_TextChanged" />
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required" CssClass="text-danger" />
            <asp:CompareValidator ID="cvPasswords" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" CssClass="text-danger" />
        </div>

        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
    </div>
</asp:Content>
