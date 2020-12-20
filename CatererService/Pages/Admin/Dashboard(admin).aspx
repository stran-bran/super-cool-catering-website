<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="DashBoard(Admin).aspx.cs" Inherits="CatererService.Pages.Admin.DashBoard_Admin_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 234px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Dash Board Report</h2>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDashboard">
        <Columns>
            <asp:BoundField DataField="TotalOrder" HeaderText="TotalOrder" ReadOnly="True" SortExpression="TotalOrder" />
            <asp:BoundField DataField="NotComfirm" HeaderText="NotComfirm" ReadOnly="True" SortExpression="NotComfirm" />
            <asp:BoundField DataField="TotalOrder1" HeaderText="TotalOrder1" ReadOnly="True" SortExpression="TotalOrder1" />
            <asp:BoundField DataField="Prepared" HeaderText="Prepared" ReadOnly="True" SortExpression="Prepared" />
            <asp:BoundField DataField="Cancelled" HeaderText="Cancelled" ReadOnly="True" SortExpression="Cancelled" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDashboard" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString %>" SelectCommand="SELECT (SELECT COUNT(OrderID) AS Expr1 FROM Orders) AS TotalOrder, (SELECT COUNT(OrderID) AS Expr1 FROM Orders AS Orders_4 WHERE (Status = 'notComfirm')) AS NotComfirm, (SELECT COUNT(OrderID) AS Expr1 FROM Orders AS Orders_3 WHERE (Status = 'comfirm')) AS TotalOrder, (SELECT COUNT(OrderID) AS Expr1 FROM Orders AS Orders_2 WHERE (Status = 'prepared')) AS Prepared, (SELECT COUNT(OrderID) AS Expr1 FROM Orders AS Orders_1 WHERE (Status = 'cancelled')) AS Cancelled"></asp:SqlDataSource>
</asp:Content>
