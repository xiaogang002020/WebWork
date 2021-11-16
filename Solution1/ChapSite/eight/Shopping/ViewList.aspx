<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewList.aspx.cs" Inherits="eight_Shopping_ViewList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label><br />
            <asp:CheckBoxList ID="chklsGreens" runat="server"></asp:CheckBoxList>
            <asp:Button ID="btnClear" runat="server" Text="清空点菜单" OnClick="btnClear_Click" /><br/>
            <asp:Button ID="btnContinue" runat="server" Text="继续点菜" OnClick="btnContinue_Click" />
        </div>
    </form>
</body>
</html>
