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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Package_ID" DataSourceID="SqlDS_PackagesList" width="400px"  CssClass="auto-style27" Height="400px" RepeatColumns="3" RepeatDirection="Horizontal">
    <ItemTemplate>
        <table class="auto-style18" style="text-align:center; border:groove; width:300px;">
            <tr>
                <td class="auto-style22">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../Images/" + Eval("Package_Image") %>' Height="300px" Width="360px" />
                    <br />
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
        </table>


    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDS_PackagesList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Packages.Package_ID, Packages.Package_Name, Packages.Package_Desc, Packages.Package_Discount, Caterer_Packages.Caterer_ID, Packages.Package_Image FROM Packages INNER JOIN Caterer_Packages ON Packages.Package_ID = Caterer_Packages.Package_ID WHERE (Caterer_Packages.Caterer_ID = @CID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="CID" QueryStringField="cid" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
