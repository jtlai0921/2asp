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
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        DataKeyField="BookID">
                        <ItemTemplate>
                            BookID:
                            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                            <br />
                            BookTitle:
                            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                            <br />
                            BookPrice:
                            <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Eval("BookPrice") %>' />
                            <br />
                            BookPubDate:
                            <asp:Label ID="BookPubDateLabel" runat="server" 
                                Text='<%# Eval("BookPubDate") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
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
