<%@ Page Language="C#" AutoEventWireup="true" CodeFile="查询教师课表的联动下拉列表框.aspx.cs" Inherits="第五次作业_查询教师课表的联动下拉列表框" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True"></asp:DropDownList>
            <asp:DropDownList ID="ddlTerm" runat="server" AutoPostBack="True"></asp:DropDownList>
            <asp:DropDownList ID="ddlCollege" runat="server" AutoPostBack="True"></asp:DropDownList>
            <asp:DropDownList ID="ddlTeacher" runat="server" AutoPostBack="True"></asp:DropDownList>

        </div>
    </form>
</body>
</html>
