﻿<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="ChangePassword" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#FFFBD6" 
        BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        DisplayUserName="True" Font-Names="Verdana" Font-Size="0.8em">
        <CancelButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
        <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#990000" />
        <ChangePasswordButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#990000" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
        <TextBoxStyle Font-Size="0.8em" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    </asp:ChangePassword>
</asp:Content>

