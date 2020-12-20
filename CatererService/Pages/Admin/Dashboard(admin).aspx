<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Dashboard(admin).aspx.cs" Inherits="CatererService.Pages.Admin.Dashboard_admin_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Dash Board</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDashBoard">
            <Columns>
                <asp:BoundField DataField="TotalOrder" HeaderText="TotalOrder" ReadOnly="True" SortExpression="TotalOrder" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDashBoard">
            <Columns>
                <asp:BoundField DataField="ConfirmOrder" HeaderText="ConfirmOrder" ReadOnly="True" SortExpression="ConfirmOrder" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDashBoard" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString %>" SelectCommand="SELECT COUNT(OrderID) AS ConfirmOrder FROM Orders WHERE (Status IN ('Confirm'))"></asp:SqlDataSource>
    </p>
    </asp:Content>

