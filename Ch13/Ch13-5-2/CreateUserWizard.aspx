<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="CreateUserWizard" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFFBD6" 
        BorderColor="#FFDFAD" BorderStyle="Solid" BorderWidth="1px" 
        CancelDestinationPageUrl="~/Login.aspx" 
        ContinueDestinationPageUrl="~/Default.aspx" DisplayCancelButton="True" 
        Font-Names="Verdana" Font-Size="0.8em">
        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
        <SideBarButtonStyle ForeColor="White" />
        <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" 
            HorizontalAlign="Center" />
        <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

