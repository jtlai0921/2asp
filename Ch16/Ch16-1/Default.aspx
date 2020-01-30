<%@ Page Language="C#" enableEventValidation="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Panel1.Visible = true; // 顯示登入表單
            Panel2.Visible = false; // 隱藏訊息表單
        }
        else
        {
            Panel1.Visible = false; // 隱藏登入表單
            Panel2.Visible = true; // 顯示訊息表單
        }
        ShowMessage();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = txtMsg.Text;
        if (msg != "")
        {   // 有聊天訊息  
            UpdateMessage(msg);
            ShowMessage();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text;
        if (username != "")
        {
            // 有輸入使用者  
            if (Session["Username"] == null)
            {   // 取得使用者名稱 
                Session["Username"] = username;
                lblPrompt.Text = username + ": ";
                Panel1.Visible = false; // 隱藏登入表單
                Panel2.Visible = true; // 顯示訊息表單
            }
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        ShowMessage();
    }
    // 更新聊天訊息
    public void UpdateMessage(string msg)
    {
        string newMsg = "<b>" + Session["Username"] + 
                        "</b>(" + DateTime.Now + "):";
        Application.Lock();
        // 更新聊天訊息 
        Application["Msg1"] = Application["Msg2"];
        Application["Msg2"] = Application["Msg3"];
        Application["Msg3"] = Application["Msg4"];
        Application["Msg4"] = Application["Msg5"];
        Application["Msg5"] = Application["Msg6"];
        Application["Msg6"] = Application["Msg7"];
        Application["Msg7"] = Application["Msg8"];
        Application["Msg8"] = Application["Msg9"];
        Application["Msg9"] = newMsg + msg;
        Application.UnLock();
    }
    // 顯示聊天訊息
    public void ShowMessage()
    {
        lblOutput.Text = Application["Msg9"] + "<br/>";
        lblOutput.Text += Application["Msg8"] + "<br/>";
        lblOutput.Text += Application["Msg7"] + "<br/>";
        lblOutput.Text += Application["Msg6"] + "<br/>";
        lblOutput.Text += Application["Msg5"] + "<br/>";
        lblOutput.Text += Application["Msg4"] + "<br/>";
        lblOutput.Text += Application["Msg3"] + "<br/>";
        lblOutput.Text += Application["Msg2"] + "<br/>";
        lblOutput.Text += Application["Msg1"] + "<br/>";
    }
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
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="text-align: center" bgcolor="Blue" class="style2">
                    聊天訊息</td>
            </tr>
            <tr>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="lblOutput" runat="server" Font-Size="Small"></asp:Label>
                            <asp:Timer ID="Timer1" runat="server" Interval="3000" ontick="Timer1_Tick">
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server">
                        <table class="style1">
                            <tr>
                                <td bgcolor="#99CCFF">
                                    使用者名稱 :&nbsp;&nbsp;<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
&nbsp;
                                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="登入" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                   
                    <asp:Panel ID="Panel2" runat="server">
                        <table class="style1">
                        <tr>
                            <td bgcolor="#9999FF">
                                <asp:Label ID="lblPrompt" runat="server"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="txtMsg" runat="server" Width="336px"></asp:TextBox>
&nbsp;
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="送出訊息" />
                            </td>
                        </tr>
                    </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
