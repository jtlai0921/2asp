<%@ Page Language="C#" MasterPageFile="~/BookShop.master" Title="購物車" Debug="true" %>

<script runat="server">
    
    double total = 0;

    protected void Page_Init(object sender, EventArgs e)
    {
        // 宣告WHERE子句的IN條件
        string where = "WHERE [BookID] IN (";
        bool isFirst = true;
        // 取出所有Cookie
        foreach (string bookItem in Request.Cookies)
        {
            // 是否是購物車的Cookie
            if (bookItem.StartsWith("Book"))
            {
                if (isFirst) // 第1次
                {
                    where += "'" + Request.Cookies[bookItem]["ID"] + "'";
                    isFirst = false;
                }
                else
                {
                    where += ", '" + Request.Cookies[bookItem]["ID"] + "'";
                }
            }
        }
        where += ")"; // 完成WHERE子句
        // 更改資料來源控制項的SELECT指令
        SqlDataSource1.SelectCommand += where;
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int quantity;
        double subtotal, price;
        // 檢查是否是資料列
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // 指定數量
            e.Row.Cells[4].Text = Request.Cookies[("Book" + e.Row.Cells[1].Text).Trim()]["Quantity"];
            price = Convert.ToDouble(e.Row.Cells[3].Text.Substring(3));
            quantity = Convert.ToInt32(e.Row.Cells[4].Text);
            subtotal = price * quantity;   // 小計
            total += subtotal;  // 計算總價
            e.Row.Cells[5].Text = subtotal.ToString("c");
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[5].Text = total.ToString("c");
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int pos = 0;
        string bookID;
        if (e.CommandName == "DelItem")
        {
            pos = Convert.ToInt32(e.CommandArgument); // 哪一列圖書
            // 取得書號
            bookID = GridView1.DataKeys[pos].Value.ToString();
            // 刪除Cookie
            Response.Cookies[("Book" + bookID).Trim()].Expires = DateTime.Today.AddDays(-365);
            Response.Redirect("ShoppingCart.aspx");
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    網路書店購物明細：<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="3" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
        GridLines="Horizontal" Width="679px" 
        OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" 
        OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#E7E7FF" 
        BorderStyle="None" BorderWidth="1px">
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <Columns>
            <asp:ButtonField ButtonType="Button" HeaderText="刪除" Text="刪除" 
                CommandName="DelItem" />
            <asp:BoundField DataField="BookID" HeaderText="書號" ReadOnly="True" 
                SortExpression="BookID" />
            <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                SortExpression="BookTitle" />
            <asp:BoundField DataField="BookPrice" DataFormatString="{0:c}" HeaderText="書價" 
                SortExpression="BookPrice" />
            <asp:TemplateField HeaderText="數量"/>                
            <asp:TemplateField HeaderText="小計"/>              
        </Columns>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [BookID], [BookTitle], [BookPrice] FROM [Books]"></asp:SqlDataSource>
<br />
</asp:Content>

