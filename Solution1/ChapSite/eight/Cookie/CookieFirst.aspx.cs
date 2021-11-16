using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eight_CookieFirst : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cookies["Name"].Value = "罗峰"; 
        if (Request.Cookies["Name"] != null)
        {
            lblMsg.Text = Request.Cookies["Name"].Value + ",欢迎您回来！";
        }
        else
        {
            Response.Redirect("~/eight/CookieSecond.aspx");
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/eight/CookieSecond.aspx");
    }
}