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
                    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
                        GridLines="Both">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <EditItemTemplate>
                            BookID:
                            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                            <br />
                            BookCatalog:
                            <asp:TextBox ID="BookCatalogTextBox" runat="server" 
                                Text='<%# Bind("BookCatalog") %>' />
                            <br />
                            BookTitle:
                            <asp:TextBox ID="BookTitleTextBox" runat="server" 
                                Text='<%# Bind("BookTitle") %>' />
                            <br />
                            BookAuthor:
                            <asp:TextBox ID="BookAuthorTextBox" runat="server" 
                                Text='<%# Bind("BookAuthor") %>' />
                            <br />
                            BookPrice:
                            <asp:TextBox ID="BookPriceTextBox" runat="server" 
                                Text='<%# Bind("BookPrice") %>' />
                            <br />
                            BookPubDate:
                            <asp:TextBox ID="BookPubDateTextBox" runat="server" 
                                Text='<%# Bind("BookPubDate") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            BookID:
                            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
                            <br />
                            BookCatalog:
                            <asp:TextBox ID="BookCatalogTextBox" runat="server" 
                                Text='<%# Bind("BookCatalog") %>' />
                            <br />
                            BookTitle:
                            <asp:TextBox ID="BookTitleTextBox" runat="server" 
                                Text='<%# Bind("BookTitle") %>' />
                            <br />
                            BookAuthor:
                            <asp:TextBox ID="BookAuthorTextBox" runat="server" 
                                Text='<%# Bind("BookAuthor") %>' />
                            <br />
                            BookPrice:
                            <asp:TextBox ID="BookPriceTextBox" runat="server" 
                                Text='<%# Bind("BookPrice") %>' />
                            <br />
                            BookPubDate:
                            <asp:TextBox ID="BookPubDateTextBox" runat="server" 
                                Text='<%# Bind("BookPubDate") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            BookID:
                            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                            <br />
                            BookCatalog:
                            <asp:Label ID="BookCatalogLabel" runat="server" 
                                Text='<%# Bind("BookCatalog") %>' />
                            <br />
                            BookTitle:
                            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' />
                            <br />
                            BookAuthor:
                            <asp:Label ID="BookAuthorLabel" runat="server" 
                                Text='<%# Bind("BookAuthor") %>' />
                            <br />
                            BookPrice:
                            <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' />
                            <br />
                            BookPubDate:
                            <asp:Label ID="BookPubDateLabel" runat="server" 
                                Text='<%# Bind("BookPubDate") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="刪除" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                CommandName="New" Text="新增" />
                        </ItemTemplate>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    </asp:FormView>
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
