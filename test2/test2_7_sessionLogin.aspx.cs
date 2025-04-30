using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test_7_sessionLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Contents["name"]=TextBox1.Text+"，欢迎您！";
            Session.Timeout = 1;
            Response.Redirect("test2_7_session.aspx");
        }
    }
}