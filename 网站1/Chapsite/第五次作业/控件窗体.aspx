<%@ Page Language="C#" AutoEventWireup="true" CodeFile="控件窗体.aspx.cs" Inherits="控件窗体" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>简易网页计算器</title>
    <style>
        div{
            text-align:center;
            margin-top:100px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="btnSubtract">
            <asp:Label ID="Label1" runat="server" Text="Label">简易计算器</asp:Label><br />
            <asp:TextBox ID="txtDisplay" runat="server" Text="" Width="184px" Height="30" ReadOnly="True"></asp:TextBox><br />
            <asp:Button ID="btnOne" runat="server" Text="1" Width="60px" OnClick="ButttonOne_Click"  />
            <asp:Button ID="btnTwo" runat="server" Text="2" Width="60px" OnClick="ButttonTwo_Click"/>
            <asp:Button ID="btnThree" runat="server" Text="3" Width="60px" OnClick="ButttonThree_Click"/><br />
            <asp:Button ID="btnAdd" runat="server" Text="+" Width="60px" OnClick="BtnAdd_Click"/>
            <asp:Button ID="subSubtract" runat="server" Text="-" Width="60px" OnClick="BtnSubtract_Click"/>
            <asp:Button ID="btnEqual" runat="server" Text="=" Width="60px" OnClick="BtnEqual_Click"/>
        </div>
    </form>
</body>
</html>
