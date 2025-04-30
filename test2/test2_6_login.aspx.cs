using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HttpCookie c1 = new HttpCookie("name", TextBox1.Text);
            //c1.Expires=DateTime.Now.AddMinutes(1);
            //Response.Cookies.Add(c1);
            //Response.Cookies["name"].Value = TextBox1.Text;
            //string str = Request.Cookies["name"].Value;
            //Session.Contents["name"] = TextBox1.Text;
            //TextBox1.Text = Session.Contents["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = HttpUtility.UrlEncode(TextBox1.Text, System.Text.Encoding.UTF8);
            HttpCookie c1 = new HttpCookie("name", str);
            c1.Expires = DateTime.Now.AddSeconds(10);
            Response.Cookies.Add(c1);
            Response.Redirect("test_6_cookie.aspx");

        }
    }
}