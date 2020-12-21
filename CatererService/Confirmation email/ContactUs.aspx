<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CatererService.Confirmation_email.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Contacy Us @ 
    <br />
    Phone - 8073565367
    <br />
    Email - Caterer@gmail.com 
    <br />
    Address - 123NorthAvenue, ThunderBay Ontario
    <br />
    Pin-P7C 5P1
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" style="margin-right: 45px" ContinueDestinationPageUrl="~/Pages/Home page/Home.aspx">
    <ContinueButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#1C5E55" />
    <CreateUserButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#1C5E55" />
    <MailDefinition BodyFileName="~/Confirmation email/SignUpConfirmation.txt" Subject="New Account at CP380 Website">
    </MailDefinition>
    <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
    <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
    <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#1C5E55" />
    <SideBarButtonStyle ForeColor="White" />
    <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
    <StepStyle BorderWidth="0px" />
</asp:CreateUserWizard>
</asp:Content>
