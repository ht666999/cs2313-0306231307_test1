using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_9_chat : System.Web.UI.Page
    {
        public static string user = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Timer1.Enabled = false;
                string s1 = HttpUtility.UrlDecode(Request.Cookies["name"].Value.ToString());
                user = s1;
                Label1.Text =  s1+",欢迎您！";
                if (Application["fresh"] == null) { Application["fresh"] = "0"; }
            }
            Label3.Text = "当前在线人数：" + Session.Contents.Count.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str;
            if (TextBox2.Text == "")
            {
            }
            else 
            {
                
                str = Label1.Text.Split(',')[0] + "{" + DateTime.Now.ToString() + "}说：" + TextBox2.Text + "\n";
                Application.Lock();
                Application["chat"] += str;
                Application.UnLock();
                if (Application["chat"] != null)
                {
                    TextBox1.Text = Application["chat"].ToString();
                    
                }
                TextBox2.Text = "";
                Application.Lock();
                //Timer1.Enabled = true;
                Application["fresh"] = "1";
                Application.UnLock();
            }
            
        }
        protected void fresh()
        {
            TextBox1.Text = Application["chat"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Application["chat"]!=null)
            TextBox1.Text = Application["chat"].ToString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            
        }
    }
}