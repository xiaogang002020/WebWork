using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 控件窗体 : System.Web.UI.Page
{
    static string num1 = "0", num2 = "0", total = "", sign = "";
    protected void ButttonOne_Click(object sender, EventArgs e)
    {
        total += "1";
        txtDisplay.Text = total;
    }
    protected void ButttonTwo_Click(object sender, EventArgs e)
    {
        total += "2";
        txtDisplay.Text = total;
    }
    protected void ButttonThree_Click(object sender, EventArgs e)
    {
        total += "3";
        txtDisplay.Text = total;
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        if(sign.Length==1)
        {
            Count();
            num1 = txtDisplay.Text;
            sign = "+";
        }
        else
        {
            num1 = txtDisplay.Text;
            txtDisplay.Text = "";
            total = "";
            sign = "+";
        }
    }
    protected void BtnSubtract_Click(object sender, EventArgs e)
    {
        if (sign.Length == 1)
        {
            Count();
            num1 = txtDisplay.Text;
            sign = "-";
        }
        else
        {
            num1 = txtDisplay.Text;
            txtDisplay.Text = "";
            total = "";
            sign = "-";
        }
    }
    protected void BtnEqual_Click(object sender, EventArgs e)
    {
        Count();
    }
    protected void Count()
    {
        num2 = txtDisplay.Text;
        if(num2=="")
        {
            num2 = "0";
        }
        switch(sign)
        {
            case "+":
                txtDisplay.Text = (int.Parse(num1) + int.Parse(num2)).ToString();
                num1 = "0";
                num2 = "0";
                total = "";
                sign = "";
                break;
            case "-":
                txtDisplay.Text = (int.Parse(num1) - int.Parse(num2)).ToString();
                num1 = "0";
                num2 = "0";
                total = "";
                sign = "";
                break;
        }
    }

}