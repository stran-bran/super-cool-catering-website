<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="CatererService.Pages.Caterer.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Order management</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlOrderManagement">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlOrderManagement" runat="server"></asp:SqlDataSource>
    </p>

</asp:Content>
