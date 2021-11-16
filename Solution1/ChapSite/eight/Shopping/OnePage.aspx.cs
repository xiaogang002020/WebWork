using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eight_Shopping_OnePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
           
        }
    }
    /// <summary>
    /// 点击加入购物车
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        for(int i=0; i<chklsPet.Items.Count; i++)
        {
            Session["list"] += chklsPet.Items[i].Text + ",";
        }
    }
    /// <summary>
    /// 查看购物车
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnView_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewList.aspx");
    }
}