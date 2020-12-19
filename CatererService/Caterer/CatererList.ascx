<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CatererList.ascx.cs" Inherits="CatererService.CatererList" %>
<style type="text/css">
    .auto-style1 {
        font-size: x-large;
    }
</style>
<asp:DataList ID="DataList1" runat="server" DataKeyField="Caterer_ID" DataSourceID="SqlDataSource1" CssClass="auto-style1">
    <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" ForeColor="#3366FF" />
    <HeaderTemplate>
        List of Caterers:
    </HeaderTemplate>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../Caterer/CatererPackages.aspx?cid="+Eval("Caterer_ID") %>' Text='<%# Eval("Caterer_Name") %>'></asp:HyperLink>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Caterers]"></asp:SqlDataSource>


