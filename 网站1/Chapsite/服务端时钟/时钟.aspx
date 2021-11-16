<%@ Page Language="C#" AutoEventWireup="true" CodeFile="时钟.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>简易时钟</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script>
        function refresh() {
            $.ajax({
                url: "时钟1.aspx",
                cache: false,
                success: function (datetime) {
                    $("#divMsg").text(datetime);
                }  
            });
            setTimeout("refresh()", 500);
        }
    </script>
</head>
<body onload="refresh()">
    <form id="form1" runat="server">
        <div id="divMsg">
        </div>
    </form>
</body>
</html>
