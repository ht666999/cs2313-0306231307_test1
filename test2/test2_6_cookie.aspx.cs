using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test_6_cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["name"] == null) { Label1.Text = "请先登录"; return; }
            string str = HttpUtility.UrlDecode(Request.Cookies["name"].Value, System.Text.Encoding.UTF8);
            Label1.Text=str+",欢迎你！";
        }
    }
}