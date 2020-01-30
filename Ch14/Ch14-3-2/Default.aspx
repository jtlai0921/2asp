<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .menuTab
        {
            position: relative;
            top: 1px;
            left: 10px;
        }
        .tabPage
        {
            border: 1px solid #000000;
            background-color: #eeeeee;
            color: #0000FF;
        }
        .selectedTab
        {
            background-color: #FFFF00;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-bottom-color: #FFFF00;
        }
        .viewTab
        {
            border: 1px solid #000000;
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" CssClass="menuTab" Orientation="Horizontal" 
            StaticMenuItemStyle-CssClass="tabPage"
            StaticSelectedStyle-CssClass="selectedTab">
            <Items>
                <asp:MenuItem Selected="True" Text="焦點新聞" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="運動廣場" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="影視訊息" Value="2"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:Panel ID="Panel1" runat="server" CssClass="viewTab">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    MultiView控制項的View1控制項。<br />
                    MultiView控制項的View1控制項。<br />
                    MultiView控制項的View1控制項。
                </asp:View>
                <asp:View ID="View2" runat="server">
                    MultiView控制項的View2控制項。<br />
                    MultiView控制項的View2控制項。<br />
                    MultiView控制項的View2控制項。
                </asp:View>
                <asp:View ID="View3" runat="server">                 
                    MultiView控制項的View3控制項。<br />
                    MultiView控制項的View3控制項。<br />
                    MultiView控制項的View3控制項。                 
                </asp:View>
            </asp:MultiView>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
