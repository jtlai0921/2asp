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
                <td colspan="3">
                    寫入字串:
                    <asp:TextBox ID="txtInput" runat="server" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="寫入" Width="80px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="覆寫" Width="80px" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="新增" Width="80px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
