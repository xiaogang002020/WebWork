<%@ Page Language="C#" AutoEventWireup="true" CodeFile="时钟2.aspx.cs" Inherits="时钟2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script>
                function startTime() {
                    document.getElementById("demo").innerHTML = Date();
                    setTimeout('startTime()', 500);  // 设置500毫秒后再次调用以更新时间
                }
    </script>
     <script >
        // 这个脚本是 ie6和ie7 通用的脚本
        function custom_close(){
        if
        (confirm("您确定要关闭本页吗？")){
        window.opener=null;
        window.open('','_self');
        window.close();
        }
        else{}
        }
    </script>
    
</head>
<body onload="startTime()">
    <form id="form1" runat="server">
        <div>
            <p id="demo"></p>
            
            <input id="btnClose" type="button" value="关闭本页" onclick="custom_close()" />
        </div>
    </form>
</body>
</html>
