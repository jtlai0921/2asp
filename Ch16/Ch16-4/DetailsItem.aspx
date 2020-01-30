<%@ Page Language="C#" MasterPageFile="~/BookShop.master" Title="產品資訊" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        string bookID = Request.QueryString["Id"]; // 取得書號
        // 建立Cookie儲存選購商品
        if (Request.Cookies["Book" + bookID] != null)
        {
            // 存在, 更新數量
            int quantity = Convert.ToInt32(Request.Cookies["Book" + bookID]["Quantity"]);
            Response.Cookies["Book" + bookID]["ID"] = bookID;
            quantity += Convert.ToInt32(txtQuantity.Text);
            Response.Cookies["Book" + bookID]["Quantity"] = quantity.ToString();
        }
        else
        {
            // 不存在, 建立新Cookie
            Response.Cookies["Book" + bookID]["ID"] = bookID;
            Response.Cookies["Book" + bookID]["Quantity"] = txtQuantity.Text;
        }
        Response.Cookies["Book" + bookID].Expires = DateTime.Today.AddDays(10);
        Response.Redirect("ShoppingCart.aspx"); // 轉址至購物車
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
       <table class="style4">
           <tr>
               <td>
                   購買數量</td>
               <td>
                   <asp:TextBox ID="txtQuantity" runat="server">1</asp:TextBox>
               </td>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="加入購物車" onclick="Button1_Click" />
               </td>
           </tr>
       </table>
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
                <asp:BoundField DataField="BookCatalog" HeaderText="分類" 
                    SortExpression="BookCatalog" ReadOnly="True" />
                <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                    SortExpression="BookTitle" ReadOnly="True" />
                <asp:BoundField DataField="BookAuthor" HeaderText="作者" 
                    SortExpression="BookAuthor" ReadOnly="True" />
                <asp:BoundField DataField="BookPrice" HeaderText="書價" 
                    SortExpression="BookPrice" DataFormatString="{0:c}" ReadOnly="True" />
                <asp:BoundField DataField="BookPubDate" HeaderText="出版日" 
                    SortExpression="BookPubDate" DataFormatString="{0:d}" ReadOnly="True" />
                <asp:ImageField DataImageUrlField="BookID" 
                    DataImageUrlFormatString="~/images/{0}.gif" HeaderText="封面" ReadOnly="True">
                </asp:ImageField>
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
</asp:Content>

