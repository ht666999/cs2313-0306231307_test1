using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1
{
    public partial class test1_9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button btn1 = new Button();
            TextBox txt1 = new TextBox();
            txt1.ID = "txt1";
            btn1.Text = "确定";
            btn1.Click += new EventHandler(btn1_Click);
            PlaceHolder1.Controls.Add(btn1);
            PlaceHolder1.Controls.Add(txt1);
            if (IsPostBack) 
            {
                return; 
            }
            CheckBoxList1.Items.Add("游泳");
            CheckBoxList1.Items.Add("读书");
            CheckBoxList1.Items.Add("看电影");
            CheckBoxList1.Items.Add("打电动");
            
        }
        protected void btn1_Click(object sender, EventArgs e) 
        {
            TextBox txt1 = (TextBox)PlaceHolder1.FindControl("txt1"); 
            Response.Write(txt1.Text);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string result = "";
            if (CheckBoxList1.SelectedIndex == -1) return;
            for(int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected) { result +="<"+ CheckBoxList1.Items[i].Text+">"; }
            }
            Label1.Text = "您选择了："+result;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "你选中了";
            Label2.Text = "";
            str += RadioButtonList1.SelectedValue;
            Label2.Text += str;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect ("test1_6.aspx");
        }
    }
}