<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="CatererPackages.aspx.cs" Inherits="CatererService.Caterer.CatererPackages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            font-size: larger;
        height: 36px;
        width: 221px;
      
    }
        .auto-style18 {
            width: 102%;
            height: 334px;
        }
        .auto-style22 {
            width: 221px;
            height: 185px;
        }
        .auto-style24 {
            width: 221px;
            height: 30px;
        }
    .auto-style26 {
        width: 221px;
        }
    .auto-style27 {
        margin-top: 0px;
        margin-bottom: 0px;
        margin-left: 0px;
    }
        .auto-style28 {
            font-size: medium;
        }
        .auto-style30 {
            width: 221px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Package_ID" DataSourceID="SqlDS_PackagesList" width="400px"  CssClass="auto-style27" Height="400px" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <EditItemTemplate>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </EditItemTemplate>
    <ItemTemplate>
        <table class="auto-style18" style="text-align:center; border:groove; width:300px;">
            <tr>
                <td class="auto-style22">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../Images/" + Eval("Package_Image") %>' Height="300px" Width="360px" />
                   
                    <br />
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Package_ID") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Label ID="Package_NameLabel" runat="server" Text='<%# Eval("Package_Name") %>' CssClass="auto-style25" style="font-size: large" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style24"><em>
                    <asp:Label ID="Package_DescLabel" runat="server" CssClass="auto-style28" Text='<%# Eval("Package_Desc") %>' />
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style26"><span class="auto-style28">Discount:</span>
                    <asp:Label ID="Package_DiscountLabel" runat="server" Text='<%# Eval("Package_Discount") %>' CssClass="auto-style28" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Button ID="btnShowDetails" runat="server" Text="Show Package Details" />
                </td>
            </tr>
        </table>


    </ItemTemplate>
        <SelectedItemTemplate>
            <table class="auto-style18" style="text-align:center; border:groove; width:300px;">
                <tr>
                    <td class="auto-style22">
                        <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# "../Images/" + Eval("Package_Image") %>' Width="360px" />
                        <br />
                        <br />
                        <asp:HiddenField ID="hfPkgID" runat="server" Value='<%# Eval("Package_ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>
                        <asp:Label ID="Package_NameLabel" runat="server" CssClass="auto-style25" style="font-size: large" Text='<%# Eval("Package_Name") %>' />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style24"><em>
                        <asp:Label ID="Package_DescLabel" runat="server" CssClass="auto-style28" Text='<%# Eval("Package_Desc") %>' />
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style26"><span class="auto-style28">Discount:</span>
                        <asp:Label ID="Package_DiscountLabel" runat="server" CssClass="auto-style28" Text='<%# Eval("Package_Discount") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Button ID="btnHideDetails" runat="server" Text="Hide Package Details" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SQLDS_PackageItems">
                            <Columns>
                                <asp:TemplateField HeaderText="Item_Image" SortExpression="Item_Image">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Item_Image") %>'>

                                        </asp:TextBox><asp:Image ID="Image2" runat="server" ImageUrl='<%# "../Images/" +Eval("Item_Image") %>' Height="250px" Width="230px"/>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        </asp:TextBox><asp:Image ID="Image2" runat="server" ImageUrl='<%# "../Images/" +Eval("Item_Image") %>'  Height="250px" Width="230px"/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item" HeaderText="Item_Name" SortExpression="Item" />
                                <asp:BoundField DataField="about" HeaderText="Description" SortExpression="about" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Calories" HeaderText="Calories" SortExpression="Calories" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SQLDS_PackageItems" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Items.*, Package_Items.Package_ID, Package_Items.Quantity FROM Package_Items INNER JOIN Items ON Package_Items.Item_ID = Items.ID WHERE (Package_Items.Package_ID = @pkgID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hfPkgID" Name="pkgID" PropertyName="Value" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </SelectedItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDS_PackagesList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Packages.Package_ID, Packages.Package_Name, Packages.Package_Desc, Packages.Package_Discount, Caterer_Packages.Caterer_ID, Packages.Package_Image FROM Packages INNER JOIN Caterer_Packages ON Packages.Package_ID = Caterer_Packages.Package_ID WHERE (Caterer_Packages.Caterer_ID = @CID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="CID" QueryStringField="cid" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
