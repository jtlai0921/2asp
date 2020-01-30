<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="Login" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        CreateUserText="新增使用者帳號" CreateUserUrl="~/CreateUserWizard.aspx" 
        DestinationPageUrl="~/Default.aspx" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#333333" PasswordRecoveryText="忘記密碼" 
        PasswordRecoveryUrl="~/PasswordRecovery.aspx" TextLayout="TextOnTop" 
        TitleText="登入網站">
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
</asp:Content>

