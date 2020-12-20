<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="CatererManagement(admin).aspx.cs" Inherits="CatererService.Pages.Admin.CatererManagement_admin_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <%--role creation--%>
        <h2>Create role</h2>
        <br />
        <p>
            Role Name:
            <asp:TextBox ID="txtRoleName" runat="server" Height="25px" Width="198px"></asp:TextBox>
            <asp:Button ID="btnNewRoles" runat="server" Text="Create new roles" OnClick="btnNewRoles_Click" />
        </p>
        <br />
        <p>
            Role List:
            <asp:GridView ID="grdRoleList" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId" DataSourceID="SqlRoleList" OnSelectedIndexChanged="grdRoleList_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="RoleId" HeaderText="RoleId" ReadOnly="True" SortExpression="RoleId" Visible="False" />
                    <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlRoleList" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString %>" DeleteCommand="DELETE FROM [Roles] WHERE [RoleId] = @RoleId" InsertCommand="INSERT INTO [Roles] ([RoleId], [ApplicationId], [RoleName], [Description]) VALUES (@RoleId, @ApplicationId, @RoleName, @Description)" SelectCommand="SELECT * FROM [Roles]" UpdateCommand="UPDATE [Roles] SET [ApplicationId] = @ApplicationId, [RoleName] = @RoleName, [Description] = @Description WHERE [RoleId] = @RoleId">
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
                    <asp:Parameter Name="ApplicationId" Type="Object" />
                    <asp:Parameter Name="RoleName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="RoleId" Type="Object" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <br />
            <asp:Label ID="lblSelectedRoleUSer" runat="server" Text="Member in role: "></asp:Label><br />
            <asp:Repeater ID="repUsersInRole" runat="server">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblUsers" AutoPostBack="true" Text='<%# Container.DataItem %>'></asp:Label>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </p>
        <%--assign role--%>
        <h2>Assign User's Roles:</h2>
        <p>
            User List:<br />
            <asp:DropDownList ID="ddUserList" runat="server" AutoPostBack="true" DataSourceID="SqlUserList" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="ddUserList_SelectedIndexChanged"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlUserList" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString %>" SelectCommand="SELECT [UserId], [UserName] FROM [Users]"></asp:SqlDataSource>
            <br />
            <asp:Repeater ID="UsersRoleList" runat="server" DataSourceID="SqlRoleListItem">
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" Text='<%# Eval("RoleName") %>' OnCheckedChanged="RoleCheckBox_CheckChanged" />
                    <br />
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlRoleListItem" runat="server" ConnectionString="<%$ ConnectionStrings:CatererServiceDatabaseConnectionString %>" SelectCommand="SELECT [RoleName] FROM [Roles]"></asp:SqlDataSource>
        </p>
        <%--status--%>
        <p>
            Action Status: 
            <asp:Label ID="lblActionStatus" runat="server" Text="Working Status"></asp:Label>
        </p>
    </div>
</asp:Content>
