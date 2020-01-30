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
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblOutput1" runat="server" BackColor="Yellow" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="Blue" Height="32px" 
                        Width="175px"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="更新時間" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
