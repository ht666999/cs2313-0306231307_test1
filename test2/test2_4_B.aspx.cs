using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_4_A : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                Response.Write("通过server跳转");
                TextBox result = PreviousPage.FindControl("TextBox1") as TextBox;
                if (result != null) { Label1.Text = result.Text; }
            }
            else { Response.Write("通过response跳转"); }
        }
    }
}