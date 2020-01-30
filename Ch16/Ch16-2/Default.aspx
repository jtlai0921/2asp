<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_PreRender(object sender, EventArgs e)
    {
        // 取得上傳圖檔目錄的實際路徑
        string uploadPath = Server.MapPath("~/UploadImages");
        // 建立DirectoryInfo物件
        DirectoryInfo dirInfo = new DirectoryInfo(uploadPath);
        // 使用簡單資料繫結
        DataList1.DataSource = dirInfo.GetFiles();
        DataList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = "~/UploadImages/";
        if (UploadImage.HasFile) // 是否有選擇上傳圖檔
        {
            if (IsImageFile(UploadImage.FileName))
            {
                // 是圖檔
                path += UploadImage.FileName;
                UploadImage.SaveAs(Server.MapPath(path));
            }
        }
    }
    // 檢查檔案附檔名是否是圖檔
    bool IsImageFile(string fname)
    {
        // 取得副檔名
        string FileExt = Path.GetExtension(fname);
        switch (FileExt.ToLower())
        {
            case ".jpg": return true;
            case ".gif": return true;
            case ".png": return true;
            default:     return false;
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="選擇上傳圖檔:"></asp:Label>
&nbsp;<asp:FileUpload ID="UploadImage" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="上傳圖檔" Width="191px" 
            onclick="Button1_Click" />
        <hr />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="115px" 
                    ImageUrl='<%# Eval("Name", "~/UploadImages/{0}") %>' Width="157px" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# Eval("Name", "ShowPhoto.aspx?file={0}") %>' 
                    Text='<%# Eval("Name") %>'></asp:HyperLink>
                </ItemTemplate>
        </asp:DataList>
        <hr />
        <br />    
    </div>
    </form>
    </body>
</html>
