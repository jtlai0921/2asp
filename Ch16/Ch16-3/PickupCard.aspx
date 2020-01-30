<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PickupCard</title>
    <style type="text/css">
        .style1
        {
            width: 82%;
            height: 67px;
        }
        .style2
        {
            width: 306px;
        }
        .style3
        {
            color: #FFFFFF;
            height: 25px;
        }
        .style4
        {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td bgcolor="Blue" class="style3" style="text-align: center">
                    檢視電子賀卡</td>
            </tr>
            <tr>
                <td class="style4">
                    請輸入卡號:&nbsp;&nbsp;
                    <asp:TextBox ID="txtCardID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="檢視賀卡" />
                </td>
            </tr>
            </table>
    
                    <asp:FormView ID="FormView1" runat="server" CellPadding="4" 
                        DataKeyNames="CardID" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" Width="594px">
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#E3EAEB" />
                        <EditItemTemplate>
                            CardID:
                            <asp:Label ID="CardIDLabel1" runat="server" Text='<%# Eval("CardID") %>' />
                            <br />
                            Receiver:
                            <asp:TextBox ID="ReceiverTextBox" runat="server" 
                                Text='<%# Bind("Receiver") %>' />
                            <br />
                            ReceiverMail:
                            <asp:TextBox ID="ReceiverMailTextBox" runat="server" 
                                Text='<%# Bind("ReceiverMail") %>' />
                            <br />
                            Sender:
                            <asp:TextBox ID="SenderTextBox" runat="server" Text='<%# Bind("Sender") %>' />
                            <br />
                            SenderMail:
                            <asp:TextBox ID="SenderMailTextBox" runat="server" 
                                Text='<%# Bind("SenderMail") %>' />
                            <br />
                            Message:
                            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
                            <br />
                            Image:
                            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            CardDate:
                            <asp:TextBox ID="CardDateTextBox" runat="server" 
                                Text='<%# Bind("CardDate") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            CardID:
                            <asp:TextBox ID="CardIDTextBox" runat="server" Text='<%# Bind("CardID") %>' />
                            <br />
                            Receiver:
                            <asp:TextBox ID="ReceiverTextBox" runat="server" 
                                Text='<%# Bind("Receiver") %>' />
                            <br />
                            ReceiverMail:
                            <asp:TextBox ID="ReceiverMailTextBox" runat="server" 
                                Text='<%# Bind("ReceiverMail") %>' />
                            <br />
                            Sender:
                            <asp:TextBox ID="SenderTextBox" runat="server" Text='<%# Bind("Sender") %>' />
                            <br />
                            SenderMail:
                            <asp:TextBox ID="SenderMailTextBox" runat="server" 
                                Text='<%# Bind("SenderMail") %>' />
                            <br />
                            Message:
                            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
                            <br />
                            Image:
                            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            CardDate:
                            <asp:TextBox ID="CardDateTextBox" runat="server" 
                                Text='<%# Bind("CardDate") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style2">
                                        <b>日期:</b>
                                        <asp:Label ID="CardDateLabel" runat="server" 
                                            Text='<%# Bind("CardDate", "{0:d}") %>' />
                                        <br />
                                        <b>收件者</b>:
                                        <asp:Label ID="ReceiverLabel" runat="server" Text='<%# Bind("Receiver") %>' />
                                        <br />
                                        <b>寄件者</b>:
                                        <asp:Label ID="SenderLabel" runat="server" Text='<%# Bind("Sender") %>' />
                                        <br />
                                        <br />
                                        <b>訊息內容:</b><br />
&nbsp;<br />
                                        <asp:Label ID="MessageLabel" runat="server" Text='<%# Bind("Message") %>' />
                                        <br />
                                    </td>
                                    <td>
                                        <asp:Image ID="Image1" runat="server" Height="202px" 
                                            ImageUrl='<%# Eval("Image") %>' Width="259px" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [PostCard] WHERE ([CardID] = @CardID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtCardID" Name="CardID" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                <br />
    
    </div>
    </form>
</body>
</html>
