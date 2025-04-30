using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Util;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_9_login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<string> list = new List<string>();
            foreach (string s in Session.Contents) { list.Add(s); }
            if (!list.Contains(TextBox1.Text))
            {
                string s1=HttpUtility.UrlEncode(TextBox1.Text);
                HttpCookie c1 = new HttpCookie("name", s1);
                c1.Expires = DateTime.Now.AddMinutes(20);
                Response.Cookies.Add(c1);
                list.Add(TextBox1.Text);
                Application.Lock();
                Application["name"]=TextBox1.Text;
                Application.UnLock();
                Session.Contents.Add(TextBox1.Text,TextBox1.Text);
                Response.Redirect("test2_9_chat.aspx");
            }
            else Response.Write("用户已在线，登陆失败");
        }

    }
}