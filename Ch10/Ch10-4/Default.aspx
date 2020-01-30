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
        .style2
        {
            width: 202px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                    CellPadding="2" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
                                    ForeColor="Black" GridLines="None">
                                    <FooterStyle BackColor="Tan" />
                                    <Columns>
                                        <asp:BoundField DataField="BookID" HeaderText="書號" ReadOnly="True" 
                                            SortExpression="BookID" />
                                    </Columns>
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                        HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                </asp:GridView>
                            </td>
                            <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource2" 
                        Height="50px" Width="387px" AutoGenerateRows="False" 
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
                            <asp:ImageField DataImageUrlField="BookID" 
                                DataImageUrlFormatString="~/images/{0}.gif" HeaderText="封面" ReadOnly="True">
                            </asp:ImageField>
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [BookID] FROM [Books]">
                                </asp:SqlDataSource>
                            </td>
                            <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
