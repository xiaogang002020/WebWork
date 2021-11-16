﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 第五次作业_单项选择题的测试页面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lblQuestion = new Label
        {
            ID = "lblQuestion",
            Text = "1.&nbsp;Web服务器控件不包括（&nbsp;&nbsp;&nbsp;&nbsp;）。"
        };
        
        plhChoice.Controls.Add(lblQuestion);
        RadioButtonList rdoltChoice = new RadioButtonList
        {
            ID = "rdoltChioce"
        };
        rdoltChoice.Items.Add(new ListItem("A. Wizard", "A"));
        rdoltChoice.Items.Add(new ListItem("B. input", "B"));
        rdoltChoice.Items.Add(new ListItem("C. AdRotator", "C"));
        rdoltChoice.Items.Add(new ListItem("D. Calenndar", "D"));
        plhChoice.Controls.Add(rdoltChoice);
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
        {
        RadioButtonList rdoltChoice = (RadioButtonList)plhChoice.FindControl("rdoltChoice");
        lblDisplay.Text = "您选择了：" + rdoltChoice.SelectedValue;
        }
}