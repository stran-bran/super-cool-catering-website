<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CatererService.Pages.Home_page.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    This is my home page</p>
<asp:Menu ID="Menu1" runat="server">
    <Items>
        <asp:MenuItem Text="Caterer List" Value="Caterer List">
            <asp:MenuItem Text="Son Tran" Value="Son Tran"></asp:MenuItem>
            <asp:MenuItem Text="Tiffany Tran" Value="Tiffany Tran"></asp:MenuItem>
            <asp:MenuItem Text="Sarthak Chadha" Value="Sarthak Chadha"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
</asp:Content>
