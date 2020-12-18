<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="RoleManaging(Admin).aspx.cs" Inherits="CatererService.Pages.Caterer_Managing_page.CatererManaging_Admin_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Caterer_ID" Height="85px" Width="413px">
        <EditItemTemplate>
            Caterer_ID:
            <asp:Label ID="Caterer_IDlabel1" runat="server" Text='<%# Eval("Caterer_ID") %>'></asp:Label>
            <br />
            Caterer_Name: 
            <asp:TextBox ID="Caterer_NameTextBox" runat="server" Text='<%# Bind("Caterer_Name") %>'></asp:TextBox>
            <br />
            Caterer_Description:
            <asp:TextBox ID="Caterer_DescriptionTextBox" runat="server" Text='<%# Bind("Caterer_Description") %>'></asp:TextBox>
            <br />
            Caterer_Phone:
            <asp:TextBox ID="Caterer_PhoneTextBox" runat="server" Text='<%# Bind("Caterer_Phone") %>'></asp:TextBox>
            <br />
            Caterer_Logo:
            <asp:TextBox ID="Caterer_LogoTextBox" runat="server" Text='<%# Bind("Caterer_Logo") %>'></asp:TextBox>
            <br />
           <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update"></asp:LinkButton> &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel">Cancel</asp:LinkButton>
    
        </EditItemTemplate>

        <InsertItemTemplate>
            Caterer_Name:
            <asp:TextBox ID="Caterer_NameTextBox" runat="server" Text='<%# Bind("Caterer_Name") %>'></asp:TextBox>
            <br />
            Caterer_Description:
            <asp:TextBox ID="Caterer_DescriptionTextBox" runat="server" Text='<%# Bind("Caterer_Description") %>'></asp:TextBox>
            <br />
            Caterer_Phone:
            <asp:TextBox ID="Caterer_PhoneTextBox" runat="server" Text='<%# Bind("Caterer_Phone") %>'></asp:TextBox>
            <br />
            Caterer_Logo:
            <asp:TextBox ID="Caterer_LogoTextBox" runat="server" Text='<%# Bind("Caterer_Logo") %>'></asp:TextBox>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"></asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel">Cancel</asp:LinkButton>
        </InsertItemTemplate>

    </asp:FormView>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Caterers]"></asp:SqlDataSource>
    
    
</asp:Content>

