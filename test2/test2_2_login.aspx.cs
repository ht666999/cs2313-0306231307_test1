using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                string str = TextBox1.Text;
                Response.Redirect("test2_2_student.aspx?name=" + str);
            }
            else
            {
                string str = TextBox1.Text;
                Response.Redirect("test2_2_admin.aspx?name=" + str);
            }
        }
    }
}