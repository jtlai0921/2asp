<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="Default" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="登入網站" 
        LogoutAction="Redirect" LogoutPageUrl="~/Login.aspx" LogoutText="登出網站"/>
    <br />
    <asp:LoginView ID="LoginView1" runat="server">
        <RoleGroups>
            <asp:RoleGroup Roles="Admin">
                <ContentTemplate>
                    <span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:'Times New Roman'; mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;
mso-bidi-language:AR-SA; mso-fareast-font-family: 全真中明體;">Admin</span><span 
                        style="font-size:
13.0pt;mso-bidi-font-size:10.0pt;font-family:全真中明體; mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:
AR-SA; mso-ascii-font-family: &quot;Times New Roman&quot;; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;;">角色的使用者</span><span 
                        lang="EN-US" style="font-size:13.0pt;
mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:
全真中明體;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:
AR-SA">...<br />
                    <br />
                    </span>
                    <asp:LoginName ID="LoginName2" runat="server" />
                </ContentTemplate>
            </asp:RoleGroup>
            <asp:RoleGroup Roles="Member">
                <ContentTemplate>
                    <span 
                        style="font-size:
13.0pt;mso-bidi-font-size:10.0pt;font-family:全真中明體; mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:
AR-SA; mso-ascii-font-family: &quot;Times New Roman&quot;; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;;">
                    Member角色的使用者</span><span lang="EN-US" style="font-size:13.0pt;
mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:
全真中明體;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:
AR-SA">...<br />
                    <br />
                    </span>
                    <asp:LoginName ID="LoginName3" runat="server" />
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>
        <LoggedInTemplate>
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:全真中明體;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;
mso-bidi-language:AR-SA">歡迎使用者進入網站</span><span lang="EN-US" style="font-size:
13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:
全真中明體;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:
AR-SA">...<br />
            <br />
            </span>
            <asp:LoginName ID="LoginName1" runat="server" />
        </LoggedInTemplate>
        <AnonymousTemplate>
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:全真中明體;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;
mso-bidi-language:AR-SA">使用者尚未登入網站</span>
        </AnonymousTemplate>
    </asp:LoginView>
</asp:Content>

