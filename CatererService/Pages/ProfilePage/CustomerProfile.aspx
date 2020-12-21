<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="CustomerProfile.aspx.cs" Inherits="CatererService.Pages.ProfilePage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align :center; ">
        <h1> Customer Profile</h1>
    </div>
    <div style="text-align :center; ">
        <p> 
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="629px">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT FROM Caterers"></asp:SqlDataSource>
        </p>
    </div>
</asp:Content>
