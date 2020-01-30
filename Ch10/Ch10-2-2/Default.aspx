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
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="BookID" DataSourceID="SqlDataSource1" CellPadding="2" 
                        ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" 
                        BorderColor="Tan" BorderWidth="1px">
                        <FooterStyle BackColor="Tan" />
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
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
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
