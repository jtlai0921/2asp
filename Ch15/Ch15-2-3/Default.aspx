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
        .style2
        {
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    讀幾字元或幾行：</td>
                <td>
                    <asp:TextBox ID="txtCount" runat="server">2</asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="讀取字元" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button2" runat="server" Text="讀取幾行" Width="80px" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="讀取至檔尾" Width="80px" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="讀取整個檔案" Width="80px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="txtOutput" runat="server" Width="397px" Height="107px" 
                        ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
