using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_4_B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("test2_4_B.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Execute("test2_4_B.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("test2_4_B.aspx");
        }
    }
}