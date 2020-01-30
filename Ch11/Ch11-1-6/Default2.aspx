<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Default2</title>
    <link href="Ch11-1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lblStyle"></asp:Label>
        <br />
    
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btnStyle" />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </form>
</body>
</html>