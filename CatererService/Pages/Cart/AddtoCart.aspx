<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="CatererService.Pages.Cart.AddtoCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="margin : 0 auto; ">
            <h2 style="text-decoration: underline; color: forestgreen"">
                <asp:Label ID="Label1" runat="server" Text="You Have The Following Product In Your Cart" Font-Names="Bodoni MT Black"></asp:Label>
            </h2>
            </br>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" Font-Names="Colonna MT" Font-Bold="True">Continue Shopping</asp:HyperLink>
            </br><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCFFCC" BorderColor="#009933" BorderWidth="5px" EmptyDataText="No product available in Shopping Cart" Height="250px" Width="1043px" DataSourceID="SQLDS_Items">
                <Columns>
                    <asp:BoundField DataField="Package_Discount" HeaderText="Package_Discount" SortExpression="Package_Discount"></asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                    <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item"></asp:BoundField>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID"></asp:BoundField>
                    <asp:BoundField DataField="Calories" HeaderText="Calories" SortExpression="Calories"></asp:BoundField>
                    <asp:BoundField DataField="Item_Image" HeaderText="Item_Image" SortExpression="Item_Image"></asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity"></asp:BoundField>
                    <asp:BoundField DataField="Package_ID" HeaderText="Package_ID" SortExpression="Package_ID" />
                </Columns>
                <HeaderStyle BackColor="White" />
            </asp:GridView>
          
            
            <asp:SqlDataSource ID="SQLDS_Items" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Packages.Package_Discount, Items.Price, Items.Item, Items.ID, Items.Calories, Items.Item_Image, Package_Items.Quantity, Package_Items.Package_ID, Packages.Package_ID AS Expr1 FROM Items INNER JOIN Package_Items ON Items.ID = Package_Items.Item_ID INNER JOIN Packages ON Package_Items.Package_ID = Packages.Package_ID"></asp:SqlDataSource>
          
            
        </div>
    </form>
</body>
</html>
