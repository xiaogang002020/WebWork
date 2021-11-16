using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 第五次作业_查询教师课表的联动下拉列表框 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindYear();
            BindTerm();
            BindCollege();
            BindTeacher();
        }
    }
    protected void BindYear()
    {
        ddlYear.Items.Clear();
        int startYear = DateTime.Now.Year - 10;
        int currentYear = DateTime.Now.Year;
        for(int i=startYear;i<=currentYear;i++)
        {
            ddlYear.Items.Add(new ListItem((i-1).ToString() + "-" + i.ToString()));
        }
        ddlYear.SelectedValue = (currentYear - 1).ToString() + "-" + currentYear.ToString();
    }
    protected void BindTerm()
    {
        ddlTerm.Items.Clear();
        for(int i=1; i<=2;i++)
        {
            ddlTerm.Items.Add(i.ToString());
        }
    }
    protected void BindCollege()
    {
        ddlCollege.Items.Clear();
        ddlCollege.Items.Add(new ListItem("人文与管理学院"));
        ddlCollege.Items.Add(new ListItem("中医学院"));
        ddlCollege.Items.Add(new ListItem("药学院"));
    }
    protected void DdlCollege_SelectdIndexChanged(object sender,EventArgs e)
    {
        BindTeacher();
    }
    protected void BindTeacher()
    {
        ddlTeacher.Items.Clear();
        switch(ddlCollege.SelectedValue)
        {
            case "人文与管理学院":
                ddlTeacher.Items.Add(new ListItem("林立"));
                ddlTeacher.Items.Add(new ListItem("陈林"));
                ddlTeacher.Items.Add(new ListItem("林群新"));
                break;
            case "中医学院":
                ddlTeacher.Items.Add(new ListItem("张强"));
                ddlTeacher.Items.Add(new ListItem("王第男"));
                break;
            case "药学院":
                ddlTeacher.Items.Add(new ListItem("朱兆清"));
                ddlTeacher.Items.Add(new ListItem("毛沁程"));
                break;
        }
    }

}