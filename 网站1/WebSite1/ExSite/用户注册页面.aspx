<%@ Page Language="C#" AutoEventWireup="true" CodeFile="用户注册页面.aspx.cs" Inherits="ExSite_用户注册页面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td style="text-align:right">用户名：</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic" Text="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="text-align:right">密码：</td>
                    <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rvfPassword" runat="server" ErrorMessage="请输入密码！" Display="Dynamic" ControlToValidate="txtPassword" SetFocusOnError="True" Text="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="text-align:right">确认密码：</td>
                    <td> <asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="rvfPasswordAgain" runat="server" ErrorMessage="请输入确认密码！" ControlToValidate="txtPasswordAgain" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator> <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="密码与确认密码不一致！" ControlToCompare="txtPassword" ControlToValidate="txtPasswrodAgain" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator></td>
                </tr>
                <tr>
                    <td style="text-align:right">生日：</td>
                    <td> <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="rfvBirthday" runat="server" ErrorMessage="请输入生日！" ControlToValidate="txtBirthday" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator> <asp:RangeValidator ID="rvBirthday" runat="server" ErrorMessage="日期应该在1900-1-1到2020-1-1之间！" ControlToValidate="txtBirthday" Display="Dynamic"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="text-align:right">电话号码：</td>
                    <td> <asp:TextBox ID="txtTetephone" runat="server"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="rfvTelephone" runat="server" ErrorMessage="请输入电话号码！" ControlToValidate="txtTetephone" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="revTelephone" runat="server" ErrorMessage="电话号码的格式为021-66798304！" ControlToValidate="txtTetephone" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\d{3}-\d{8}"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="text-align:right">身份证号码：</td>
                    <td> <asp:TextBox ID="txtIdentity" runat="server"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="rfvIdentity" runat="server" ErrorMessage="请输入身份证号！" ControlToValidate="txtIdentity" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator> <asp:CustomValidator ID="csvIdentity" runat="server" ErrorMessage="身份证号错误！" ControlToValidate="txtIdentity" Display="Dynamic" SetFocusOnError="True" OnServerValidate="csvIdentity_ServerValidate"></asp:CustomValidator></td>
                </tr>
            </table> 
            <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" /><asp:Label ID="lblMsg" runat="server"></asp:Label>
            <asp:ValidationSummary ID="vsSumit" runat="server" ShowMessageBox="True" ShowSummary="False" Dispiay="Dynamic"/>
        </div>
    </form>
</body>
</html>
