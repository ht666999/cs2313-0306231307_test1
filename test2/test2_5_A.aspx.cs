using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_5_A : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                TextBox result = PreviousPage.FindControl("TextBox1") as TextBox;
                Response.Write(result.Text + ",欢迎您！");
            }
        }
    }
}