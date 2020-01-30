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
                <td>
                    <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">書號</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">:</span></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="搜尋" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
