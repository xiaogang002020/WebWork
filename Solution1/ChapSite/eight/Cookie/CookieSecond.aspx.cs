using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eight_Cookie : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnTrue_Click(object sender, EventArgs e)
    {
        if(txbName.Text=="罗峰"&&txbPassword.Text=="111")
        {
        HttpCookie cookie = new HttpCookie("Name");
        cookie.Value = txbName.Text;
        cookie.Expires = DateTime.Now.AddHours(10);
        Response.Cookies.Add(cookie);
        Response.Redirect("~/eight/WelcomePage.aspx");

        }
        else
        {
            Response.Redirect("~/eight/CookieSecond.aspx");
            Response.Write("你的用户名或密码不正确！");            
        }
    }
}