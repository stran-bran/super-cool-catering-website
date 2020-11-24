<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CatererService.Pages.Login_page.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Login ID="Login1" runat="server" Width="495px" CreateUserText="Don't have an account? Register now!" CreateUserUrl="~/Pages/Register page/Register.aspx" DestinationPageUrl="~/Pages/Home page/Home.aspx" Height="160px" PasswordRecoveryText="Forgot password?" PasswordRecoveryUrl="~/Pages/Login page/PasswordRecovery.aspx">
</asp:Login>
</asp:Content>
