<%@ Page Language="C#" %>
<%@ Import Namespace="System.Net.Mail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        string cardID, textBody;
        // 卡號加上IP位址
        Random rd = new Random(); // 亂數取得卡號
        cardID = Convert.ToInt64(67509373 * rd.NextDouble()).ToString() +
                     Request.ServerVariables["REMOTE_ADDR"].Replace(".", "");
        // 新增記錄
        SqlDataSource1.InsertParameters["CardID"].DefaultValue = cardID;
        SqlDataSource1.InsertParameters["Receiver"].DefaultValue = txtReceiver.Text;
        SqlDataSource1.InsertParameters["ReceiverMail"].DefaultValue = txtReceiverMail.Text;
        SqlDataSource1.InsertParameters["Sender"].DefaultValue = txtSender.Text;
        SqlDataSource1.InsertParameters["SenderMail"].DefaultValue = txtSenderMail.Text;
        SqlDataSource1.InsertParameters["Message"].DefaultValue = txtMsg.Text;
        SqlDataSource1.InsertParameters["Image"].DefaultValue = imgOutput.ImageUrl;
        SqlDataSource1.Insert(); // 新增賀卡的記錄
        // 建立通知郵件的內容
        textBody = txtReceiver.Text + "在賀卡網站有一張電子賀卡!!!\r\n ";
        textBody += "賀卡卡號: " + cardID + "\r\n";
        textBody += "請進入PickupCard.aspx檢視賀卡!!!" + "\r\n";
        // 寄送郵件      
        MailMessage mail = new MailMessage();
        // 寄件者和收件者郵件地址
        mail.From = new MailAddress(txtSenderMail.Text);
        mail.To.Add(new MailAddress(txtReceiverMail.Text));
        mail.Subject = "電子賀卡"; // 主旨
        mail.Body = textBody; // 本文
        // 設定SMTP伺服器
        SmtpClient smtpServer = new SmtpClient();
        smtpServer.Host = "ms2.hinet.net";
        smtpServer.Send(mail); // 寄出郵件
        lblMessage.Text = "寄送通知到: " + txtReceiverMail.Text + " 成功..<br/>";
    }

    protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (Wizard1.ActiveStepIndex == 1)
        {
            string dtDay = DateTime.Now.Month + "/" + DateTime.Now.Day + "/" + DateTime.Now.Year;
            if (rdbImg1.Checked)
            {
                imgOutput.ImageUrl = "~\\images\\img1.gif";
            }
            else if (rdbImg2.Checked)
            {
                imgOutput.ImageUrl = "~\\images\\img2.gif";
            }
            else if (rdbImg3.Checked)
            {
                imgOutput.ImageUrl = "~\\images\\img3.gif";
            }
            else
            {
                imgOutput.ImageUrl = "~\\images\\img4.gif";
            }
            lblOutput.Text = "<b>日期: </b>" + dtDay + "<br/>";
            lblOutput.Text += "<b>收件者: </b>" + txtReceiver.Text + "<br/>";
            lblOutput.Text += "<b>寄件者: </b>" + txtSender.Text + "<br/>";
            lblOutput.Text += "<b>訊息內容: </b><br/><br/>";
            lblOutput.Text += txtMsg.Text;
        }
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
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" 
            BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            Height="366px" Width="665px" HeaderText="電子賀卡" 
            onfinishbuttonclick="Wizard1_FinishButtonClick" 
            OnNextButtonClick="Wizard1_NextButtonClick">
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <NavigationStyle Font-Size="Medium" HorizontalAlign="Right" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="選擇賀卡圖片">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="88px" 
                                    ImageUrl="~/images/img1.gif" Width="142px" />
                            </td>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="125px" 
                                    ImageUrl="~/images/img2.gif" Width="121px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rdbImg1" runat="server" GroupName="Image" 
                                    style="font-size: small" Text="雪屋" Checked="True" />
                            </td>
                            <td>
                                <asp:RadioButton ID="rdbImg2" runat="server" GroupName="Image" 
                                    style="font-size: small" Text="聖誕樹" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image3" runat="server" Height="110px" 
                                    ImageUrl="~/images/img3.gif" Width="134px" />
                            </td>
                            <td>
                                <asp:Image ID="Image4" runat="server" Height="114px" 
                                    ImageUrl="~/images/img4.gif" Width="125px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rdbImg3" runat="server" GroupName="Image" 
                                    style="font-size: small" Text="卡通" />
                            </td>
                            <td>
                                <asp:RadioButton ID="rdbImg4" runat="server" GroupName="Image" 
                                    style="font-size: small" Text="校車" />
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="輸入賀卡資料">
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                收件者:</td>
                            <td>
                                <asp:TextBox ID="txtReceiver" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                收件者地址:</td>
                            <td>
                                <asp:TextBox ID="txtReceiverMail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                寄件者:</td>
                            <td>
                                <asp:TextBox ID="txtSender" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                寄件者地址:</td>
                            <td>
                                <asp:TextBox ID="txtSenderMail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                輸入賀卡內容:</td>
                            <td>
                                <asp:TextBox ID="txtMsg" runat="server" Height="83px" TextMode="MultiLine" 
                                    Width="315px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="預覽賀卡內容">
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                <asp:Label ID="lblOutput" runat="server" style="font-size: small" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Image ID="imgOutput" runat="server" Height="166px" Width="219px" />
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" Font-Size="Medium" 
                ForeColor="White" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" 
                ForeColor="#284E98" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" 
                HorizontalAlign="Center" Width="200px" />
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
                HorizontalAlign="Center" />
        </asp:Wizard>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [PostCard] WHERE [CardID] = @CardID" 
            InsertCommand="INSERT INTO [PostCard] ([CardID], [Receiver], [ReceiverMail], [Sender], [SenderMail], [Message], [Image]) VALUES (@CardID, @Receiver, @ReceiverMail, @Sender, @SenderMail, @Message, @Image)" 
            SelectCommand="SELECT [CardID], [Receiver], [ReceiverMail], [Sender], [SenderMail], [Message], [Image] FROM [PostCard]" 
            
            
            UpdateCommand="UPDATE [PostCard] SET [Receiver] = @Receiver, [ReceiverMail] = @ReceiverMail, [Sender] = @Sender, [SenderMail] = @SenderMail, [Message] = @Message, [Image] = @Image WHERE [CardID] = @CardID">
            <DeleteParameters>
                <asp:Parameter Name="CardID" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Receiver" Type="String" />
                <asp:Parameter Name="ReceiverMail" Type="String" />
                <asp:Parameter Name="Sender" Type="String" />
                <asp:Parameter Name="SenderMail" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="CardID" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CardID" Type="String" />
                <asp:Parameter Name="Receiver" Type="String" />
                <asp:Parameter Name="ReceiverMail" Type="String" />
                <asp:Parameter Name="Sender" Type="String" />
                <asp:Parameter Name="SenderMail" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
