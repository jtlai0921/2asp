<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .txtStyle
        {
            font-size: large;
            font-weight: bold;
            color: #0000FF;
            border: medium dashed #FF0000;
        }
        .docStyle
        {
            color: #008000;
            background-color: #FFFF00;
        }
        .lblStyle
        {
            font-size: large;
            color: #99FFCC;
            background-color: #000000;
            border-style: outset;
        }
        .btnStyle
        {
            font-size: large;
            background-color: #800000;
            color: #FFFFFF;
            font-weight: bold;
        }
        </style>
</head>
<body class="docStyle">
    <form id="form1" runat="server">
    <div class="docStyle">
    
        <asp:TextBox ID="TextBox1" runat="server" CssClass="txtStyle"> 測試樣式規則</asp:TextBox>
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lblStyle"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btnStyle" />
    
    </div>
    </form>
</body>
</html>
