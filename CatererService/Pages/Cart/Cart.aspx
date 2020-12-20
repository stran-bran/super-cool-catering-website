<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CatererService.Pages.Cart.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCFFCC" DataKeyNames="Package_ID,Expr1,Item_ID,ID" DataSourceID="SqlDS_CartItems" Font-Names="Bodoni MT">
        <Columns>
            <asp:BoundField DataField="Package_ID" HeaderText="Package_ID" InsertVisible="False" ReadOnly="True" SortExpression="Package_ID" />
            <asp:BoundField DataField="Item_ID" HeaderText="Item_ID" ReadOnly="True" SortExpression="Item_ID" />
            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
            <asp:BoundField DataField="Item_Image" HeaderText="Item_Image" SortExpression="Item_Image" />
            <asp:BoundField DataField="Package_Discount" HeaderText="Package_Discount" SortExpression="Package_Discount" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
        <EmptyDataTemplate>
           <h1>Your cart is empty! </h1> 
        </EmptyDataTemplate>
        <HeaderStyle BackColor="#66FF99" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDS_CartItems" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Packages.Package_ID, Package_Items.Package_ID AS Expr1, Package_Items.Item_ID, Items.ID, Packages.Package_Discount, Package_Items.Quantity, Items.Item, Items.Price, Items.Calories, Items.Item_Image FROM Packages INNER JOIN Package_Items ON Packages.Package_ID = Package_Items.Package_ID INNER JOIN Items ON Package_Items.Item_ID = Items.ID"></asp:SqlDataSource>
    
</asp:Content>
