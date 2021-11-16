using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eight_WelcomePage : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        int Num = 0 ;
        string StrNum;
        Num += 1;
        Response.Write($"恭喜你！登录成功！！你登录的次数为：{Num }");
        StrNum = Num.ToString();
        Response.Cookies["Num"].Value = StrNum;
        
    }
}