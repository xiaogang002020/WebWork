<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CookieSecond.aspx.cs" Inherits="eight_Cookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cookie限制页面访问</title>
    <style>
        div{
            width:280px;
            text-align:right;
        }
        #btnTrue{
            display:inline-block;
            margin-left:50px;
            margin-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label><asp:TextBox ID="txbName" runat="server"></asp:TextBox><br/>
            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label><asp:TextBox ID="txbPassword" runat="server"></asp:TextBox><br />
            
        </div>
        <asp:Button ID="btnTrue" runat="server" Text="确认" OnClick="btnTrue_Click" />
    </form>
</body>
</html>
