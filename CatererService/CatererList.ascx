<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CatererList.ascx.cs" Inherits="CatererService.CatererList" %>
<p>
    List of caterers:

</p>
<asp:DataList ID="DataList1" runat="server" DataSourceID="EntityDataSource1"></asp:DataList>
<asp:EntityDataSource ID="EntityDataSource1" runat="server">
</asp:EntityDataSource>

