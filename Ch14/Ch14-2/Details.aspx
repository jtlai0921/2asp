<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Height="50px" Width="450px">
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <RowStyle BackColor="#E3EAEB" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="BookID" HeaderText="書號" ReadOnly="True" 
                    SortExpression="BookID" />
                <asp:BoundField DataField="BookCatalog" HeaderText="圖書分類" 
                    SortExpression="BookCatalog" />
                <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                    SortExpression="BookTitle" />
                <asp:BoundField DataField="BookAuthor" HeaderText="作者" 
                    SortExpression="BookAuthor" />
                <asp:BoundField DataField="BookPrice" HeaderText="書價" 
                    SortExpression="BookPrice" DataFormatString="{0:c}" />
                <asp:BoundField DataField="BookPubDate" HeaderText="出版日期" 
                    SortExpression="BookPubDate" DataFormatString="{0:d}" />
            </Fields>
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Books] WHERE ([BookID] = @BookID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="BookID" QueryStringField="Id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
