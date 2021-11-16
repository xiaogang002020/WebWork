using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eight_Shopping_ViewList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    if(!IsPostBack)
        {
            if(Session["list"]==null)
            {
                lblMsg.Text = "您还没有点菜！";
                btnClear.Enabled = false;
            }
            else
            {
                string strGreens = Session["list"].ToString();
                System.Collections.ArrayList Greens = new System.Collections.ArrayList();//数组列表Greens用于存储每个菜名
                int iposition = strGreens.IndexOf(",");// 取得第一个英文逗号的位置
                while(iposition!=-1)
                {
                    string strGreen = strGreens.Substring(0, iposition);
                    if(strGreen!="")
                    {
                        Greens.Add(strGreen);
                        strGreens = strGreens.Substring(iposition + 1);
                        iposition = strGreens.IndexOf(",");
                    }
                }
                lblMsg.Text = "菜单里已有菜单";
                chklsGreens.DataSource = Greens;
                chklsGreens.DataBind();
            }
        }
    }
}