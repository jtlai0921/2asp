<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string path = "~/UploadImages/";
        string ImgFile = Request.QueryString["file"];
        path += ImgFile;
        Image1.ImageUrl = path;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ShowPoto</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <hr />
    
        <asp:Image ID="Image1" runat="server" Height="366px" Width="513px" 
            BorderStyle="Double" BorderWidth="1px" />
    
        <hr />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">回到網路相簿</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
