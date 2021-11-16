<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CookieFirst.aspx.cs" Inherits="eight_CookieFirst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label><br />
            <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" />            
        </div>
    </form>
</body>
</html>
