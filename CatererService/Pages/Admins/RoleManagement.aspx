<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="CatererService.Pages.Admins.RoleManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Create Roles: "></asp:Label><br />

    <p>Role Name: <br/>
    <asp:TextBox ID="txtRoleName" runat="server" Height="25px" Width="198px"></asp:TextBox>
    <asp:Button ID="btnNewRoles" runat="server" Text="Create new roles" OnClick="btnNewRoles_Click" />
    </p>
    <br />
    <p>
        Role List:<br/>
        <asp:DropDownList ID="ddlUserList" runat="server" AutoPostBack="True" DataSourceID="SqlRoleList" DataTextField="RoleName" DataValueField="RoleName"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString1 %>" SelectCommand="SELECT [RoleName] FROM [Roles]"></asp:SqlDataSource>
        <asp:GridView ID="grdRoleList" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId" DataSourceID="SqlRoleList" Height="128px" Width="456px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="RoleId" HeaderText="RoleId" ReadOnly="True" SortExpression="RoleId" Visible="False" />
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlRoleList" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Roles] WHERE [RoleId] = @RoleId" InsertCommand="INSERT INTO [Roles] ([RoleId], [ApplicationId], [RoleName], [Description]) VALUES (@RoleId, @ApplicationId, @RoleName, @Description)" SelectCommand="SELECT * FROM [Roles]" UpdateCommand="UPDATE [Roles] SET [RoleName] = @RoleName, [Description] = @Description WHERE [RoleId] = @RoleId">
            <DeleteParameters>
                <asp:Parameter Name="RoleId" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoleId" Type="Object" />
                <asp:Parameter Name="ApplicationId" Type="Object" />
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="RoleId" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Roles] WHERE [RoleId] = @RoleId" InsertCommand="INSERT INTO [Roles] ([RoleId], [ApplicationId], [RoleName], [Description]) VALUES (@RoleId, @ApplicationId, @RoleName, @Description)" SelectCommand="SELECT * FROM [Roles]" UpdateCommand="UPDATE [Roles] SET [RoleName] = @RoleName, [Description] = @Description WHERE [RoleId] = @RoleId">
            <DeleteParameters>
                <asp:Parameter Name="RoleId" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoleId" Type="Object" />
                <asp:Parameter Name="ApplicationId" Type="Object" />
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="RoleId" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <%--<p>
        <asp:Label ID="lblSelectedRoleUSer" runat="server" Text="Member in role: "></asp:Label><br />
        <asp:Repeater ID="RoleUserlist" runat="server">
            <ItemTemplate>
                <asp:Label runat="server" ID="lblUsers" AutoPostBack="true" Text='<%# Container.DataItem %>'></asp:Label>
                <br/>
            </ItemTemplate>
        </asp:Repeater>
    </p>--%>
    <h2>Assign User's Roles:</h2><br/>
    <p>
        User List:
        <br />
        <asp:DropDownList ID="ddUserList" runat="server" DataSourceID="SqlUserList" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="ddUserList_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlUserList" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString1 %>" SelectCommand="SELECT [UserName], [UserId] FROM [Users]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlUserName" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString %>" SelectCommand="SELECT [UserName], [UserId] FROM [Users]"></asp:SqlDataSource>
        <br />
        <asp:Repeater ID="UsersRoleList" runat="server" DataSourceID="UserRoleListItem">
            <ItemTemplate>
                <asp:CheckBox ID="RoleCheckBox" runat="server" AutoPostBack="true" Text='<%# Eval("RoleName") %>' OnCheckedChanged="RoleCheckBox_CheckChanged" />
                <br />
            </ItemTemplate>
        </asp:Repeater>
    <asp:SqlDataSource ID="UserRoleListItem" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString1 %>" SelectCommand="SELECT [RoleName] FROM [Roles]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="lblActionStatus" runat="server" Text="bruh"></asp:Label></p>
</asp:Content>
