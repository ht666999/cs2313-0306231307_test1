using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text ="欢迎"+ Session["name"].ToString()+"!";
            Label2.Text=Session["name"].ToString();
            Label3.Text=Session["userphone"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = Session["userid"].ToString();
            Response.Redirect("buycar.aspx?uid="+str);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string str = Session["userid"].ToString();
            Response.Redirect("buycar.aspx?uid=" + str);
        }
    }
}