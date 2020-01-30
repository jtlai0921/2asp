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
                    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
                        Height="50px" Width="387px" AllowPaging="True" AutoGenerateRows="False" 
                        CellPadding="4" DataKeyNames="BookID" ForeColor="#333333" GridLines="None">
                        <PagerSettings Mode="NextPrevious" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="BookID" HeaderText="書號" ReadOnly="True" 
                                SortExpression="BookID" />
                            <asp:BoundField DataField="BookCatalog" HeaderText="分類" 
                                SortExpression="BookCatalog" />
                            <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                                SortExpression="BookTitle" />
                            <asp:BoundField DataField="BookAuthor" 
                                HeaderText="作者" SortExpression="BookAuthor" />
                            <asp:BoundField DataField="BookPrice" DataFormatString="{0:c}" HeaderText="書價" 
                                SortExpression="BookPrice" />
                            <asp:BoundField DataField="BookPubDate" DataFormatString="{0:d}" 
                                HeaderText="出版日" SortExpression="BookPubDate" />
                        </Fields>
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
