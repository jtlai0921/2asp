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
        .style3
        {
        }
        .style4
        {
            width: 82px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style4">
                    <span style="font-size:13.0pt;font-family:全真中明體;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">郵件地址</span><span lang="EN-US" style="font-size:
13.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:全真中明體;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">:</span></td>
                <td>
                    <asp:TextBox ID="txtMailTo" runat="server" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <span style="font-size:13.0pt;font-family:全真中明體;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">郵件主旨</span><span lang="EN-US" style="font-size:
13.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:全真中明體;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">:</span></td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server" Width="282px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" valign="top">
                    <span style="font-size: 13.0pt; font-family: 全真中明體; mso-ascii-font-family: &quot;Times New Roman&quot;; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-ansi-language: EN-US; mso-fareast-language: ZH-TW; mso-bidi-language: AR-SA; text-align: left;">
                    郵件內容</span><span lang="EN-US" style="font-size:
13.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:全真中明體;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">:</span></td>
                <td>
                    <asp:TextBox ID="txtBody" runat="server" Height="101px" 
                        TextMode="MultiLine" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="寄出" Width="109px" style="text-align: center" 
                         />
    
                &nbsp;
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
    
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
