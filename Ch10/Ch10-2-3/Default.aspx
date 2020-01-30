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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="BookID" DataSourceID="SqlDataSource1" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="書號" ReadOnly="True" 
                                SortExpression="BookID" />
                            <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                                SortExpression="BookTitle" />
                            <asp:BoundField DataField="BookPrice" HeaderText="書價" 
                                SortExpression="BookPrice" DataFormatString="{0:c}" />
                            <asp:BoundField DataField="BookPubDate" HeaderText="出版日" 
                                SortExpression="BookPubDate" DataFormatString="{0:d}" />
                        </Columns>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [BookID], [BookTitle], [BookPrice], [BookPubDate] FROM [Books]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
