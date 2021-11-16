<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SimplePage.aspx.cs" Inherits="SimplePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtInput" runat="server" Text="文本框" >请输入内容</asp:TextBox><br/>
            <asp:Label ID="lblMessage" runat="server"></asp:Label><br/>
            <asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
