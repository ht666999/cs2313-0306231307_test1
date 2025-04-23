using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1
{
    public partial class login : System.Web.UI.Page
    {
        images im = new images();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cld1.SelectedDate = DateTime.Now;
                List<string> imname = im.getimagename();
                foreach ( string str in imname)
                {
                    //ddl1.Items.Add(str);
                    ddl1.Items.Add(new ListItem(str+"1",str));
                }
                Img1.ImageUrl = im.getimageurl()[ddl1.SelectedIndex];
            }
            lbl1.Text = "页面加载时";
        }
        public void btclick(object sender,EventArgs e)
        {
            string name = input1.Value;
            string password=input2.Value;
            if (name =="admin"&&password=="123456") {
            Response.Write($"<script>alert(\"{name} \")</script>");              
            }
            float x=float.Parse(input1.Value);
            float y=float.Parse(input2.Value);
            txt1.Text=(x+y).ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Img1.ImageUrl = im.getimageurl()[ddl1.SelectedIndex];
            string utl=".\\image\\"+ddl1.SelectedValue+".jpg";
            Img1.ImageUrl= utl;
        }

        protected void cld1_SelectionChanged(object sender, EventArgs e)
        {
            lbl1.Text="您选择的是："+cld1.SelectedDate.Year.ToString()+"年"+cld1.SelectedDate.Month.ToString()+"月"+
                cld1.SelectedDate.Day.ToString()+"日";
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            float x=float.Parse(input1.Value);
            float y= float.Parse(input2.Value);
            txt1.Text=(x-y).ToString();
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            float x = float.Parse(input1.Value);
            float y = float.Parse(input2.Value);
            txt1.Text = (x * y).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            float x = float.Parse(input1.Value);
            float y = float.Parse(input2.Value);
            txt1.Text = (x / y).ToString();
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            int cj=int.Parse(txt2.Text);
            string grade = "无";
            switch (cj / 10)
            {
                case 10:
                case 9: grade = "优";break;
                case 8: grade = "良";break;
                case 7: grade = "中";break;
                case 6: grade = "及格";break;
                default:grade = "不及格";break;
            }
            txt3.Text = grade;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("test1_6");
        }
    }
}