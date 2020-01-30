<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="PasswordRecovery" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#FFFBD6" 
        BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <SuccessTextStyle Font-Bold="True" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
        <SubmitButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
    </asp:PasswordRecovery>
</asp:Content>

