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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"> 測試樣式規則</asp:TextBox>
    
    </div>
    </form>
</body>
</html>
