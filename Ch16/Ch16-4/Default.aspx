<%@ Page Language="C#" MasterPageFile="~/BookShop.master" Title="產品目錄" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="BookCatalog" 
            DataValueField="BookCatalog" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [BookCatalog] FROM [Books]"></asp:SqlDataSource>
                     <asp:ListView ID="ListView1" runat="server" 
            DataSourceID="SqlDataSource2" GroupItemCount="2">
                         <AlternatingItemTemplate>
                             <td runat="server" style="background-color:#FFF8DC;">
                                 <table class="style5">
                                         <tr>
                                             <td>
                                                 <asp:Image ID="Image1" runat="server" Height="191px" Width="144px" 
                                                     ImageUrl='<%# Eval("BookID", "~/images/{0}.gif") %>' />
                                             </td>
                                             <td>
                                                 書號:
                                                 <asp:HyperLink ID="HyperLink1" runat="server" 
                                                     NavigateUrl='<%# Eval("BookID", "DetailsItem.aspx?Id={0}") %>' 
                                                     Text='<%# Eval("BookID") %>'></asp:HyperLink>
                                                 <br />
                                                 書名:
                                                 <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>'></asp:Label>
                                                 <br />
                                             </td>
                                         </tr>
                                     </table>
                             </td>
                         </AlternatingItemTemplate>
                         <LayoutTemplate>
                             <table runat="server">
                                 <tr runat="server">
                                     <td runat="server">
                                         <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                             style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                             <tr ID="groupPlaceholder" runat="server">
                                             </tr>
                                         </table>
                                     </td>
                                 </tr>
                                 <tr runat="server">
                                     <td runat="server" 
                                         style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                         <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                             <Fields>
                                                 <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                     ShowLastPageButton="True" />
                                             </Fields>
                                         </asp:DataPager>
                                     </td>
                                 </tr>
                             </table>
                         </LayoutTemplate>
                         <EmptyItemTemplate>
                             <td runat="server" />
                             </EmptyItemTemplate>
                             <InsertItemTemplate>
                                 <td runat="server" style="">
                                     BookTitle:
                                     <asp:TextBox ID="BookTitleTextBox" runat="server" 
                                         Text='<%# Bind("BookTitle") %>' />
                                     <br />
                                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                     <br />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                     <br />
                                 </td>
                             </InsertItemTemplate>
                             <SelectedItemTemplate>
                                 <td runat="server" 
                                     style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                     BookTitle:
                                     <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                                     <br />
                                 </td>
                             </SelectedItemTemplate>
                             <GroupTemplate>
                                 <tr ID="itemPlaceholderContainer" runat="server">
                                     <td ID="itemPlaceholder" runat="server">
                                     </td>
                                 </tr>
                             </GroupTemplate>
                             <EmptyDataTemplate>
                                 <table runat="server" 
                                     style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                     <tr>
                                         <td>
                                             未傳回資料。</td>
                                     </tr>
                                 </table>
                             </EmptyDataTemplate>
                             <EditItemTemplate>
                                 <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                                     BookTitle:
                                     <asp:TextBox ID="BookTitleTextBox" runat="server" 
                                         Text='<%# Bind("BookTitle") %>' />
                                     <br />
                                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                     <br />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                     <br />
                                 </td>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                                     <table class="style5">
                                         <tr>
                                             <td>
                                                 <asp:Image ID="Image1" runat="server" Height="191px" Width="144px" 
                                                     ImageUrl='<%# Eval("BookID", "~/images/{0}.gif") %>' />
                                             </td>
                                             <td>
                                                 書號:
                                                 <asp:HyperLink ID="HyperLink1" runat="server" 
                                                     NavigateUrl='<%# Eval("BookID", "DetailsItem.aspx?Id={0}") %>' 
                                                     Text='<%# Eval("BookID") %>'></asp:HyperLink>
                                                 <br />
                                                 書名:
                                                 <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>'></asp:Label>
                                                 <br />
                                             </td>
                                         </tr>
                                     </table>
                                 </td>
                             </ItemTemplate>
                         </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"                              
                             SelectCommand="SELECT [BookID], [BookTitle] FROM [Books] WHERE ([BookCatalog] = @BookCatalog)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="BookCatalog" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
               
</asp:Content>

