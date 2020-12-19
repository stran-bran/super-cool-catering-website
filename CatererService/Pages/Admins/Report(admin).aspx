<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Report(admin).aspx.cs" Inherits="CatererService.Pages.Admins.Report_admin_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="Sqlreport"></asp:GridView>
    <asp:SqlDataSource ID="Sqlreport" runat="server"></asp:SqlDataSource>
</asp:Content>
