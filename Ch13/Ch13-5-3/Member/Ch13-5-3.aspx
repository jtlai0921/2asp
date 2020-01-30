<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="Ch13-5-3" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<table style="width: 100%">
    <tr>
        <td>
            <span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">學號</span>:</span></td>
        <td>
            <asp:Label ID="lblID" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">姓名</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span></td>
        <td>
            <asp:Label ID="lblName" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">成績</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span></td>
        <td>
            <asp:Label ID="lblScore" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="Default.aspx" Text="上一步" />
        </td>
    </tr>
</table>
</asp:Content>

