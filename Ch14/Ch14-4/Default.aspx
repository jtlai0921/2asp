<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 254px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" Height="160px" Width="369px" 
            ActiveStepIndex="0">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Step 1">
                     <table class="style1">
                          <tr>
                             <td>
                                使用者名稱:</td>
                             <td>
                               <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                             </td>
                          </tr>
                     </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Step 2">
                     <table class="style1">
                          <tr>
                             <td>
                                姓名:</td>
                             <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                             </td>
                          </tr>
                     </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Step 3">
                     <table class="style1">
                          <tr>
                             <td>
                                密碼:</td>
                             <td>
                                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                             </td>
                          </tr>
                     </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
