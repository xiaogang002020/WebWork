<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OnePage.aspx.cs" Inherits="eight_Shopping_OnePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>点菜页面</title>
    <style>
       div{
           width:200px;
           margin:auto;
           margin-top:10px;
           border:solid 1px skyblue;
           

       }
       #btnBuy{
           margin-top:5px;
           margin-bottom:5px;
       }
     #label1#btnView #btnBuy{
           margin-bottom:50px;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="点菜系统"></asp:Label> <br/>
           可点菜品：<br/> <asp:CheckBoxList ID="chklsPet" runat="server" AutoPostBack="True">
            <asp:ListItem Text="红烧鱼" />
            <asp:ListItem Text="爆炒猪肝" />
            <asp:ListItem Text="鱼香肉丝" />
            <asp:ListItem Text="麻辣香菇" />
            <asp:ListItem Text="麻婆豆腐" />
            </asp:CheckBoxList><br />
            <asp:Button ID="btnBuy" runat="server" Text="加入购物车" OnClick="btnBuy_Click" /><br />
            <asp:Button ID="btnView" runat="server" Text="查看购物车" OnClick="btnView_Click" />
        </div>
    </form>
</body>
</html>
