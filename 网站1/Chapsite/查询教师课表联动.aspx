<%@ Page Language="C#" AutoEventWireup="true" CodeFile="查询教师课表联动.aspx.cs" Inherits="查询教师课表联动" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top:50px">
            <asp:Label ID="Label1" runat="server" Text="学年："></asp:Label>
            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" " Width="150" Height="40" ></asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="学期："></asp:Label>
            <asp:DropDownList ID="ddTerm" runat="server" AutoPostBack="True" Width="150" Height="40"></asp:DropDownList>
            <asp:Label ID="Label3" runat="server" Text="分院："></asp:Label>
            <asp:DropDownList ID="ddlCollege" runat="server" AutoPostBack="True" Width="150" Height="40"></asp:DropDownList>
            <asp:Label ID="Label4" runat="server" Text="教师："></asp:Label>
            <asp:DropDownList ID="ddlTeacher" runat="server" AutoPostBack="True" Width="150" Height="40"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
