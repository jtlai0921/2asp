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
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [Books]" 
                        DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" 
                        InsertCommand="INSERT INTO [Books] ([BookID], [BookCatalog], [BookTitle], [BookAuthor], [BookPrice], [BookPubDate]) VALUES (@BookID, @BookCatalog, @BookTitle, @BookAuthor, @BookPrice, @BookPubDate)" 
                        UpdateCommand="UPDATE [Books] SET [BookCatalog] = @BookCatalog, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookPrice] = @BookPrice, [BookPubDate] = @BookPubDate WHERE [BookID] = @BookID">
                        <DeleteParameters>
                            <asp:Parameter Name="BookID" Type="String" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BookCatalog" Type="String" />
                            <asp:Parameter Name="BookTitle" Type="String" />
                            <asp:Parameter Name="BookAuthor" Type="String" />
                            <asp:Parameter Name="BookPrice" Type="Decimal" />
                            <asp:Parameter Name="BookPubDate" Type="DateTime" />
                            <asp:Parameter Name="BookID" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BookID" Type="String" />
                            <asp:Parameter Name="BookCatalog" Type="String" />
                            <asp:Parameter Name="BookTitle" Type="String" />
                            <asp:Parameter Name="BookAuthor" Type="String" />
                            <asp:Parameter Name="BookPrice" Type="Decimal" />
                            <asp:Parameter Name="BookPubDate" Type="DateTime" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
