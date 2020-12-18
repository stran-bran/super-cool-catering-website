<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CatererService.Pages.Register_page.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="329px" Width="393px" ContinueDestinationPageUrl="~/Pages/Home page/Home.aspx">
    <MailDefinition BodyFileName="~/Confirmation email/SignUpConfirmation.txt" Subject="Your New Account at CP380 Website">
        </MailDefinition>
        <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>--%>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/Pages/Home page/Home.aspx">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
