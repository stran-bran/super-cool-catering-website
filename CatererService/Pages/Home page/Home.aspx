<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CatererService.Pages.Home_page.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        * {
            background-color:black;
            color:white;
        }

        .auto-style20 {
            height: 71px;
            width: 185px;
        }
                     
        .lblPrice1{
            margin-right: 50px;
        }
        .auto-style23 {
            height: 70px;
            width: 185px;
        }
        .auto-style27 {
            height: 71px;
            width: 390px;
        }
        .auto-style28 {
            margin-right: 0px;
        }
        .auto-style29 {
            height: 72px;
            width: 185px;
        }
        .auto-style31 {
            height: 72px;
            width: 390px;
        }
        .auto-style32 {
            height: 72px;
            width: 138px;
        }
        .auto-style33 {
            height: 71px;
            width: 138px;
        }
        .auto-style34 {
            height: 70px;
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p> Caterer list and offerring services</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style29">Tiffany Tran </td>
            <td class="auto-style32">
                <asp:Button ID="btnCaterer1" runat="server" OnClick="btnCaterer1_Click" Text="Show services" />
            </td>
            <td class="auto-style31">
                <asp:Panel ID="pnlCaterer1" runat="server" Visible="False" Height="16px" CssClass="auto-style28">
                    <asp:Label  runat="server" Text="Chicken &amp; ground beef" Width="250px"></asp:Label>  
                    <asp:Label ID="lblPrice1" runat="server" Text="$20" Width="30px"></asp:Label>
                </asp:Panel>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Son Tran</td>
            <td class="auto-style33">
                <asp:Button ID="btnCaterer2" runat="server" Text="Show services" OnClick="btnCaterer2_Click" />
            </td>
            <td class="auto-style27">
                <asp:Panel ID="pnlCaterer2" runat="server" Visible="False">
                    <asp:Label  runat="server" Text="Noodles, pork, and fried rice" Width="250px"></asp:Label>
                    <asp:Label ID="lblPrice2" runat="server" Text="$30"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Sarthak Chadha</td>
            <td class="auto-style34">
                <asp:Button ID="btnCaterer3" runat="server" Text="Show services" OnClick="btnCaterer3_Click" />
            </td>
            <td class="auto-style27">
                <asp:Panel ID="pnlCaterer3" runat="server" Visible="False">
                    <asp:Label ID="Label1" runat="server" Text="Pizza" Width="250px"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="$12"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
    </table>
   
    
</asp:Content>
